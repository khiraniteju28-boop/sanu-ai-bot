import logging
from telegram import Update
from telegram.ext import Application, CommandHandler, MessageHandler, filters, ContextTypes

TOKEN = "8219640311:AAEP6pPQHcg62HwrHubjOfzgyAlx6Z1gnB8"

logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s', level=logging.INFO)

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    # Jab aap /start bhenjengi toh ye terminal mein dikhega
    print(f"MESSAGE RECEIVED: {update.message.text} from {update.message.from_user.first_name}")
    await update.message.reply_text("Hi! Main aapka Mishu Store bot hoon. Main sahi se kaam kar raha hoon!")

async def echo(update: Update, context: ContextTypes.DEFAULT_TYPE):
    # Jo bhi aap likhengi, ye wahi wapas bhejega
    print(f"TEXT RECEIVED: {update.message.text}")
    await update.message.reply_text(f"Aapne kaha: {update.message.text}")

def main():
    print("Testing bot chalu ho raha hai...")
    app = Application.builder().token(TOKEN).build()
    app.add_handler(CommandHandler("start", start))
    app.add_handler(MessageHandler(filters.TEXT & ~filters.COMMAND, echo))
    app.run_polling()

if __name__ == '__main__':
    main()
