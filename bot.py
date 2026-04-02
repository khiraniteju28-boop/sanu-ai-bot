import logging
from telegram import InlineKeyboardButton, InlineKeyboardMarkup, Update
from telegram.ext import Application, CallbackQueryHandler, CommandHandler, MessageHandler, filters, ContextTypes

TOKEN = "8219640311:AAEP6pPQHcg62HwrHubjOfzgyAlx6Z1gnB8"

logging.basicConfig(format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)

# --- Start Command ---
async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    text = (
        "Welcome to Mishu Store! 🚗\n\n"
        "🔥 **LIMITED STOCK AVAILABLE!** 🔥\n"
        "Price: Only ₹149\n"
        "✅ 7 Days Easy Replacement (💯 Trusted)\n\n"
        "Kya aap ise lena chahenge?"
    )
    keyboard = [[InlineKeyboardButton("Yes ✅", callback_data='ask_name'), 
                 InlineKeyboardButton("No ❌", callback_data='cancel')]]
    await update.message.reply_text(text, reply_markup=InlineKeyboardMarkup(keyboard), parse_mode='Markdown')

# --- Button Handler ---
async def clicks(update: Update, context: ContextTypes.DEFAULT_TYPE):
    query = update.callback_query
    await query.answer()
    
    if query.data == 'ask_name':
        await query.message.reply_text("Bahut badhiya! Shuru karte hain.\n\n👤 Apna **Pura Naam** likhein:")
        context.user_data['step'] = 'name'
    
    elif query.data == 'pay_now':
        kb = [[InlineKeyboardButton("Online Payment (₹149)", callback_data='show_qr')],
              [InlineKeyboardButton("Cash on Delivery (₹55 Advance)", callback_data='show_qr')]]
        await query.message.reply_text("Payment method chunein:", reply_markup=InlineKeyboardMarkup(kb))

    elif query.data == 'show_qr':
        qr_text = (
            "⚠️ **QR Code Valid for 5 Minutes only!**\n\n"
            "1. Is QR ko scan karke payment karein.\n"
            "2. Payment hone ke baad **SCREENSHOT** yahan bhejein.\n"
            "3. Screenshot milte hi order pack ho jayega. 📦"
        )
        try:
            # Yahan bot 'qr.jpg' file bhejega
            await context.bot.send_photo(chat_id=query.message.chat_id, photo=open('qr.jpg', 'rb'), caption=qr_text, parse_mode='Markdown')
        except:
            await query.message.reply_text("❌ QR file nahi mili! Kripya 'qr.jpg' file Linux folder mein daalein.\n\nTab tak aap is QR par pay kar sakte hain: (Yahan apna image link ya ID likh sakte hain)")

# --- Address Form Handler (Step-by-Step) ---
async def handle_form(update: Update, context: ContextTypes.DEFAULT_TYPE):
    step = context.user_data.get('step')
    text = update.message.text

    if update.message.photo:
        await update.message.reply_text("Aapka screenshot mil gaya hai! ✅ Hum 24 ghante mein aapka order dispatch kar denge. Thank you! ❤️")
        return

    if step == 'name':
        context.user_data['name'] = text
        await update.message.reply_text("🏠 Apna **Full Address** (Gali, Mohalla, City) likhein:")
        context.user_data['step'] = 'address'
    
    elif step == 'address':
        context.user_data['full_address'] = text
        await update.message.reply_text("📍 Apna **Pincode** (6 digits) bhejein:")
        context.user_data['step'] = 'pincode'
        
    elif step == 'pincode':
        context.user_data['pincode'] = text
        await update.message.reply_text("📞 Apna **Phone Number** bhejein:")
        context.user_data['step'] = 'phone'

    elif step == 'phone':
        context.user_data['phone'] = text
        context.user_data['step'] = None # Form khatam
        
        summary = (
            f"✅ **Details Saved!**\n\n"
            f"👤 Name: {context.user_data['name']}\n"
            f"🏠 Address: {context.user_data['full_address']}\n"
            f"📍 Pincode: {context.user_data['pincode']}\n"
            f"📞 Phone: {context.user_data['phone']}\n\n"
            "Ab aakhri step: Payment karke order confirm karein."
        )
        kb = [[InlineKeyboardButton("Next (Payment) ➡️", callback_data='pay_now')]]
        await update.message.reply_text(summary, reply_markup=InlineKeyboardMarkup(kb), parse_mode='Markdown')

def main():
    app = Application.builder().token(TOKEN).build()
    app.add_handler(CommandHandler("start", start))
    app.add_handler(CallbackQueryHandler(clicks))
    app.add_handler(MessageHandler(filters.ALL & ~filters.COMMAND, handle_form))
    print("Mishu Store QR Bot is RUNNING...")
    app.run_polling()

if __name__ == '__main__':
    main()
