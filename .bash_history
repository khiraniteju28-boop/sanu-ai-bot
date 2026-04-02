mkdir meesho_shop
cd meesho-final
mkdir meesho-final
cd meesho-final
touch index.html style.css script.js
code .
rm -rf meesho_shop && mkdir meesho_shop && cd meesho_shop
nano index.html
sudo apt update && sudo apt install nano -y
nano index.html
mkdir meesho_final && cd meesho_final
nano index.html
mkdir meesho_final && cd meesho_final
nano index.html
mkdir -p ~/mywebsite && cd ~/mywebsite
cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Meesho Shop</title>
    <style>
        body { font-family: sans-serif; background: #f9f9f9; margin: 0; text-align: center; }
        .nav { background: #f43397; color: white; padding: 15px; font-size: 24px; font-weight: bold; }
        .product-card { background: white; border: 1px solid #ddd; width: 280px; margin: 20px auto; padding: 15px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); }
        .product-card img { width: 100%; border-radius: 8px; }
        .price { color: #f43397; font-size: 22px; font-weight: bold; margin: 10px 0; }
        .buy-btn { background: #f43397; color: white; border: none; width: 100%; padding: 12px; cursor: pointer; border-radius: 5px; font-weight: bold; font-size: 18px; }
        #modal { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.9); z-index: 100; }
        .m-content { background:white; margin:15% auto; padding:20px; width:80%; max-width: 300px; border-radius:10px; color: black; }
        .wa-btn { background: #25D366; color: white; padding: 12px; text-decoration: none; display: block; border-radius: 5px; font-weight: bold; margin-top: 15px; }
    </style>
</head>
<body>
    <div class="nav">Meesho Clone</div>
    
    <div class="product-card">
        <img src="https://images.unsplash.com/photo-1610030469983-98e550d6193c?w=400" alt="Saree">
        <h3>Premium Silk Saree</h3>
        <p class="price">₹499</p>
        <button class="buy-btn" onclick="document.getElementById('modal').style.display='block'">Buy Now</button>
    </div>

    <div id="modal">
        <div class="m-content">
            <h3>Scan QR & Pay</h3>
            <img src="qr-code.png" style="width:200px; border:1px solid #eee;" alt="Upload QR Image">
            <p>Payment ke baad Screenshot bheinjein!</p>
            <a href="https://wa.me/91XXXXXXXXXX" style="background:#25D366; color:white; padding:12px; text-decoration:none; display:block; border-radius:5px; font-weight:bold;">WhatsApp Par Bheinjein</a>
            <br>
            <button onclick="document.getElementById('modal').style.display='none'">Close</button>
        </div>
    </div>
</body>
</html>
EOF

pwd
ls index.html
rm -rf ~/meesho_v3 && mkdir ~/meesho_v3 && cd ~/meesho_v3
cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meesho - Online Shopping</title>
    <style>
        body { font-family: sans-serif; background: #f8f9fa; margin: 0; }
        .header { background: white; padding: 12px 20px; display: flex; align-items: center; justify-content: space-between; border-bottom: 1px solid #ddd; position: sticky; top: 0; z-index: 1000; }
        .logo { color: #f43397; font-size: 32px; font-weight: 800; text-decoration: none; letter-spacing: -1px; }
        .search-bar { background: #f0f0f0; padding: 10px; width: 40%; border-radius: 4px; border: 1px solid #ddd; outline: none; }
        .container { padding: 20px; max-width: 1200px; margin: auto; }
        .grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(180px, 1fr)); gap: 15px; }
        .card { background: white; border-radius: 8px; border: 1px solid #eee; padding: 10px; transition: 0.2s; cursor: pointer; }
        .card:hover { box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        .card img { width: 100%; height: 180px; object-fit: contain; }
        .p-title { font-size: 14px; color: #666; height: 35px; overflow: hidden; margin: 10px 0; }
        .p-price { font-size: 18px; font-weight: bold; margin: 0; }
        .free-del { font-size: 12px; color: #038d63; background: #e6f4ef; padding: 2px 8px; border-radius: 12px; display: inline-block; margin-top: 5px; }
        .buy-btn { background: #f43397; color: white; border: none; width: 100%; padding: 10px; border-radius: 4px; cursor: pointer; font-weight: bold; margin-top: 10px; }

        /* Checkout Modal */
        #checkout-modal { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.8); z-index: 2000; overflow-y: auto; }
        .modal-content { background:white; margin: 20px auto; padding: 20px; width: 90%; max-width: 400px; border-radius: 8px; position: relative; }
        .close { position: absolute; top: 10px; right: 15px; font-size: 24px; cursor: pointer; color: #999; }
        input, textarea { width: 100%; padding: 10px; margin: 8px 0; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        .payment-opt { margin: 15px 0; border: 1px solid #eee; padding: 10px; border-radius: 4px; }
        .qr-section { display: block; text-align: center; background: #f9f9f9; padding: 10px; margin-top: 10px; }
        .qr-img { width: 180px; border: 1px solid #ddd; }
        .order-confirm-btn { background: #f43397; color: white; border: none; width: 100%; padding: 14px; border-radius: 4px; font-weight: bold; font-size: 16px; cursor: pointer; margin-top: 10px; }
    </style>
</head>
<body>
    <div class="header">
        <a href="#" class="logo">meesho</a>
        <input type="text" class="search-bar" placeholder="Try Saree, Kurti or Watch">
        <div style="font-size: 14px; color: #666;">Profile | Cart</div>
    </div>

    <div class="container">
        <h2 style="font-size: 22px;">Products For You</h2>
        <div id="product-grid" class="grid"></div>
    </div>

    <div id="checkout-modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h3 style="margin-top:0;">Order Details</h3>
            <div id="item-info" style="display:flex; align-items:center; gap:10px; background:#f0f0f0; padding:10px; border-radius:5px;"></div>
            
            <form id="order-form">
                <h4>Shipping Address</h4>
                <input type="text" id="name" placeholder="Full Name" required>
                <input type="text" id="phone" placeholder="Phone Number" required>
                <textarea id="address" placeholder="Full Address (House No, Building, Area, Pincode)" required></textarea>
                
                <h4>Payment Method</h4>
                <div class="payment-opt">
                    <label><input type="radio" name="pay" value="Online" checked onchange="togglePay(true)"> Online (UPI / QR Scan)</label><br><br>
                    <label><input type="radio" name="pay" value="COD" onchange="togglePay(false)"> Cash on Delivery</label>
                </div>

                <div id="qr-box" class="qr-section">
                    <p style="font-size:12px; color:#666;">Scan & Pay then send screenshot</p>
                    <img src="qr-code.png" class="qr-img" alt="Your QR Code">
                </div>

                <button type="submit" class="order-confirm-btn">Confirm Order</button>
            </form>
        </div>
    </div>

    <script>
        let selectedItem = {};
        let myWhatsApp = "91XXXXXXXXXX"; // <--- Apna Number Daalein

        async function fetchProducts() {
            const res = await fetch('https://fakestoreapi.com/products');
            const data = await res.json();
            const grid = document.getElementById('product-grid');
            data.forEach(p => {
                grid.innerHTML += \`
                <div class="card" onclick="openOrder('\${p.title}', \${Math.floor(p.price*80)}, '\${p.image}')">
                    <img src="\${p.image}">
                    <p class="p-title">\${p.title}</p>
                    <p class="p-price">₹\${Math.floor(p.price*80)}</p>
                    <span class="free-del">Free Delivery</span>
                    <button class="buy-btn">Buy Now</button>
                </div>\`;
            });
        }

        function openOrder(n, p, i) {
            selectedItem = {n, p, i};
            document.getElementById('item-info').innerHTML = \`<img src="\${i}" width="40"> <b>\${n} - ₹\${p}</b>\`;
            document.getElementById('checkout-modal').style.display = 'block';
        }

        function closeModal() { document.getElementById('checkout-modal').style.display='none'; }
        
        function togglePay(isOnline) {
            document.getElementById('qr-box').style.display = isOnline ? 'block' : 'none';
        }

        document.getElementById('order-form').onsubmit = function(e) {
            e.preventDefault();
            const name = document.getElementById('name').value;
            const ph = document.getElementById('phone').value;
            const ad = document.getElementById('address').value;
            const pay = document.querySelector('input[name="pay"]:checked').value;
            
            const text = \`*NAYA ORDER!*%0A*Product:* \${selectedItem.n}%0A*Price:* ₹\${selectedItem.p}%0A---%0A*Name:* \${name}%0A*Phone:* \${ph}%0A*Address:* \${ad}%0A*Payment:* \${pay}\`;
            window.location.href = \`https://wa.me/\${myWhatsApp}?text=\${text}\`;
        };

        fetchProducts();
    </script>
</body>
</html>
EOF9081431918
sed -i 's/91XXXXXXXXXX/911234567890/g' index.html
sed -i 's/91XXXXXXXXXX/919081431918?g' index.html








mkdir -p ~/meesho_final && cd ~/meesho_final
mkdir -p ~/meesho_qr && cd ~/meesho_qr
cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meesho - Online Shopping</title>
    <style>
        body { font-family: sans-serif; background: #f8f9fa; margin: 0; padding-bottom: 50px; }
        .header { background: white; padding: 10px 20px; display: flex; align-items: center; border-bottom: 1px solid #ddd; position: sticky; top: 0; z-index: 1000; }
        .logo { color: #f43397; font-size: 32px; font-weight: 800; text-decoration: none; }
        .search { background: #f0f0f0; padding: 10px; width: 45%; border-radius: 5px; border: 1px solid #ddd; margin-left: 20px; outline: none; }
        .container { padding: 15px; max-width: 1200px; margin: auto; }
        .grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(170px, 1fr)); gap: 12px; }
        .card { background: white; border: 1px solid #eee; padding: 10px; border-radius: 8px; position: relative; }
        .card img { width: 100%; height: 180px; object-fit: contain; }
        .p-title { font-size: 13px; color: #666; height: 32px; overflow: hidden; margin: 8px 0; }
        .price-box { display: flex; align-items: center; gap: 5px; }
        .p-price { font-size: 18px; font-weight: bold; color: #333; }
        .old-price { font-size: 12px; color: #999; text-decoration: line-through; }
        .off { color: #038d63; font-size: 12px; font-weight: bold; }
        .free-del { font-size: 11px; color: #666; background: #f0f0f0; padding: 2px 5px; border-radius: 10px; display: inline-block; margin-top: 5px; }
        .buy-btn { background: #f43397; color: white; border: none; width: 100%; padding: 12px; border-radius: 5px; font-weight: bold; cursor: pointer; margin-top: 10px; font-size: 15px; }

        /* Checkout Modal */
        #checkout { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.8); z-index: 2000; overflow-y: auto; }
        .modal-box { background:white; margin: 15px auto; padding: 20px; width: 90%; max-width: 380px; border-radius: 12px; }
        input, textarea { width: 100%; padding: 12px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px; }
        .qr-section { text-align: center; border: 2px dashed #f43397; padding: 15px; border-radius: 10px; background: #fff9fc; display: none; }
        .qr-img { width: 220px; margin: 10px 0; border: 1px solid #ddd; }
        .final-btn { background: #f43397; color: white; border: none; width: 100%; padding: 15px; border-radius: 5px; font-weight: bold; cursor: pointer; font-size: 18px; }
    </style>
</head>
<body>
    <div class="header">
        <a href="#" class="logo">meesho</a>
        <input type="text" class="search" placeholder="Try Saree, Kurti or Watch">
    </div>

    <div class="container">
        <h3 style="color:#333;">Popular Products</h3>
        <div id="product-grid" class="grid"></div>
    </div>

    <div id="checkout">
        <div class="modal-box">
            <h3 style="margin-top:0;">Delivery Address</h3>
            <div id="form-step">
                <input type="text" id="name" placeholder="Full Name" required>
                <input type="text" id="phone" placeholder="Mobile Number" required>
                <textarea id="addr" placeholder="House No, Road Name, Area, Pincode" required></textarea>
                <button class="final-btn" onclick="showQR()">Continue to Payment</button>
            </div>
            
            <div id="qr-step" class="qr-section">
                <h3 style="color:#f43397;">Scan & Pay</h3>
                <p>Order Confirm karne ke liye payment karein:</p>
                <img src="qr-code.png" class="qr-img" alt="Scan My QR">
                <p style="font-size:13px; color:#555;">Payment ke baad Order automatically process ho jayega.</p>
                <button class="final-btn" onclick="alert('Order Successful! Payment Verification in progress.')">I Have Paid</button>
            </div>
            <button onclick="location.reload()" style="background:none; border:none; color:red; margin-top:15px; cursor:pointer; width:100%;">Cancel</button>
        </div>
    </div>

    <script>
        async function loadItems() {
            const res = await fetch('https://fakestoreapi.com/products');
            const data = await res.json();
            const grid = document.getElementById('product-grid');
            data.forEach(p => {
                let lowPrice = Math.floor(p.price * 25); // Sasta daam dikhane ke liye
                grid.innerHTML += \`
                <div class="card">
                    <img src="\${p.image}">
                    <p class="p-title">\${p.title}</p>
                    <div class="price-box">
                        <span class="p-price">₹\${lowPrice}</span>
                        <span class="old-price">₹\${lowPrice + 200}</span>
                        <span class="off">70% off</span>
                    </div>
                    <span class="free-del">Free Delivery</span>
                    <button class="buy-btn" onclick="openCheckout()">Buy Now</button>
                </div>\`;
            });
        }
        function openCheckout() { document.getElementById('checkout').style.display = 'block'; }
        function showQR() {
            if(document.getElementById('name').value == "") { alert("Pehle Address Bharein!"); return; }
            document.getElementById('form-step').style.display = 'none';
            document.getElementById('qr-step').style.display = 'block';
        }
        loadItems();
    </script>
</body>
</html>
ls ~/meesho_qr





ls
cp ~/meesho_qr/index.html ~/index.html
ls -R
rm ~/meesho_qr/index.html
find ~ -name "index.html"
mv ~/meesho-final/index.html ~/meesho-final/index.html
cd ~/meesho-final && python3 -m http.server 8000
rm -rf ~/meesho-final && mkdir ~/meesho-final && cd ~/meesho-final
cd ~/meesho-final && touch index.html
nano index.html
cd ~/meesho-final && cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meesho Lite - Official</title>
    <style>
        body { font-family: sans-serif; background: #f0f2f5; margin: 0; padding-bottom: 60px; }
        .nav { background: #f43397; color: white; padding: 12px; text-align: center; font-size: 24px; font-weight: bold; position: sticky; top: 0; z-index: 1000; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        .sub-nav { background: white; padding: 10px; font-size: 14px; text-align: center; color: #f43397; font-weight: bold; border-bottom: 1px solid #ddd; }
        .grid { display: grid; grid-template-columns: 1fr 1fr; gap: 8px; padding: 8px; }
        .card { background: white; border-radius: 8px; padding: 8px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
        .card img { width: 100%; height: 130px; object-fit: contain; border-radius: 5px; }
        .p-name { font-size: 12px; color: #444; margin: 5px 0; height: 32px; overflow: hidden; }
        .p-price { font-size: 18px; font-weight: bold; color: #222; }
        .old-p { font-size: 12px; color: #999; text-decoration: line-through; margin-left: 5px; }
        .tag { background: #e7f9ee; color: #038d33; font-size: 10px; padding: 2px 5px; border-radius: 3px; font-weight: bold; }
        .buy-btn { background: #f43397; color: white; border: none; width: 100%; padding: 10px; border-radius: 5px; font-weight: bold; margin-top: 8px; cursor: pointer; }
        #modal { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.9); z-index: 2000; overflow-y: auto; }
        .m-box { background:white; margin: 30px auto; padding: 20px; width: 85%; max-width: 350px; border-radius: 12px; text-align: center; }
        input, textarea { width: 100%; padding: 12px; margin: 8px 0; border: 1px solid #ccc; border-radius: 5px; }
        .qr-sec { display: none; border: 2px dashed #f43397; padding: 15px; margin-top: 10px; background: #fff9fc; }
        .qr-img { width: 200px; margin: 10px 0; border: 1px solid #ddd; }
    </style>
</head>
<body>
    <div class="nav">meesho lite</div>
    <div class="sub-nav">Special Offer: Everything ₹100 - ₹500</div>
    <div class="grid" id="items"></div>

    <div id="modal">
        <div class="m-box">
            <div id="step1">
                <h3 style="color:#f43397">Delivery Address</h3>
                <input type="text" id="n" placeholder="Full Name">
                <input type="text" id="ph" placeholder="Mobile Number">
                <textarea id="ad" placeholder="Full Address, Pincode"></textarea>
                <p style="color:red; font-size:12px;">* Cash on Delivery Not Available for Lite Orders</p>
                <button class="buy-btn" onclick="goPay()">Proceed to Pay</button>
            </div>
            <div id="step2" class="qr-sec">
                <h3>Scan & Pay</h3>
                <img src="qr-code.png" class="qr-img">
                <p style="font-size:13px;">Payment confirm hone ke baad order dispatch hoga.</p>
                <button class="buy-btn" onclick="location.reload()">I Have Paid</button>
            </div>
        </div>
    </div>

    <script>
        const prods = [
            {n:"Samsung 32\" Smart TV", p:399, i:"https://m.media-amazon.com/images/I/71LJJ67SslL._SL1500_.jpg"},
            {n:"LG Double Door Refrigerator", p:499, i:"https://m.media-amazon.com/images/I/71atW4T-x6L._SL1500_.jpg"},
            {n:"Split AC 1.5 Ton", p:450, i:"https://m.media-amazon.com/images/I/51I5QO26GmL._SL1000_.jpg"},
            {n:"Steel Almirah (Cupboard)", p:320, i:"https://m.media-amazon.com/images/I/61S-r5pGgNL._SL1500_.jpg"},
            {n:"Apple iPhone 15 Pro", p:500, i:"https://m.media-amazon.com/images/I/81Sig6biNGL._SL1500_.jpg"},
            {n:"Washing Machine Fully Auto", p:480, i:"https://m.media-amazon.com/images/I/71R2o5nKHDL._SL1500_.jpg"},
            {n:"HP Gaming Laptop", p:499, i:"https://m.media-amazon.com/images/I/71fSOnUAnvL._SL1500_.jpg"}
        ];

        for(let i=1; i<=100; i++) {
            prods.push({n:"Premium Product #"+i, p: Math.floor(Math.random()*400)+100, i:"https://picsum.photos/200/200?random="+i});
        }

        const g = document.getElementById('items');
        prods.forEach(x => {
            g.innerHTML += \`
                <div class="card">
                    <img src="\${x.i}">
                    <p class="p-name">\${x.n}</p>
                    <span class="p-price">₹\${x.p}</span><span class="old-p">₹\${x.p+1200}</span>
                    <br><span class="tag">Free Delivery</span>
                    <button class="buy-btn" onclick="document.getElementById('modal').style.display='block'">Buy Now</button>
                </div>\`;
        });

        function goPay() {
            if(document.getElementById('n').value=="") {alert("Address bharein!"); return;}
            document.getElementById('step1').style.display='none';
            document.getElementById('step2').style.display='block';
        }
    </script>
</body>
</html>
EOF

sudo npm install --global surge
sudo apt update && sudo apt install -y nodejs npm
sudo npm install --global surge
cd ~/meesho-final
surge . meesho-lite-shop.surge.sh
cd ~/meesho-final && cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meesho - Best Quality, Lowest Price</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body { background-color: #f8f9fa; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif; }
        .meesho-pink { color: #f43397; }
        .bg-meesho { background-color: #f43397; }
        .bottom-nav { position: fixed; bottom: 0; width: 100%; background: white; display: flex; justify-content: space-around; padding: 10px 0; border-top: 1px solid #ddd; z-index: 1000; }
        .nav-item { text-align: center; color: #666; font-size: 12px; }
        .nav-item.active { color: #f43397; }
        .search-bar { position: sticky; top: 0; background: white; padding: 10px; z-index: 1000; border-bottom: 1px solid #eee; }
        .product-card { background: white; border-radius: 8px; overflow: hidden; border: 1px solid #eee; }
        .product-img { width: 100%; height: 170px; object-fit: contain; background: #fff; }
        #modal { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.8); z-index: 2000; }
    </style>
</head>
<body>

    <div class="search-bar">
        <div class="flex items-center justify-between mb-2">
            <h1 class="text-2xl font-bold meesho-pink">meesho</h1>
            <div class="flex gap-4 text-gray-600">
                <i class="fa-regular fa-bell"></i>
                <i class="fa-regular fa-heart"></i>
                <i class="fa-solid fa-cart-shopping"></i>
            </div>
        </div>
        <div class="relative">
            <i class="fa-solid fa-magnifying-glass absolute left-3 top-3 text-gray-400"></i>
            <input type="text" placeholder="Search by Product, Brand and more" class="w-full bg-gray-100 border-none rounded-md py-2 pl-10 pr-4 text-sm focus:ring-1 focus:ring-pink-500">
        </div>
    </div>

    <div class="bg-white flex gap-6 overflow-x-auto px-4 py-3 text-sm font-medium text-gray-600 border-b no-scrollbar">
        <span class="border-b-2 border-pink-500 text-pink-500 pb-1 whitespace-nowrap">All</span>
        <span class="whitespace-nowrap">Women</span>
        <span class="whitespace-nowrap">Men</span>
        <span class="whitespace-nowrap">Kids</span>
        <span class="whitespace-nowrap">Home</span>
        <span class="whitespace-nowrap">Electronics</span>
    </div>

    <div class="p-2 grid grid-cols-2 gap-2 mb-20" id="product-list">
        </div>

    <div id="modal" class="flex items-center justify-center p-4">
        <div class="bg-white w-full max-w-sm rounded-xl p-6 relative">
            <button onclick="closeModal()" class="absolute top-4 right-4 text-gray-400"><i class="fa-solid fa-xmark text-xl"></i></button>
            <div id="address-step">
                <h3 class="text-lg font-bold mb-4">Delivery Details</h3>
                <input type="text" id="custName" placeholder="Full Name" class="w-full border p-3 rounded-lg mb-3">
                <input type="number" id="custPhone" placeholder="Mobile Number" class="w-full border p-3 rounded-lg mb-3">
                <textarea id="custAddr" placeholder="Flat, House no., Building, Area" class="w-full border p-3 rounded-lg mb-4"></textarea>
                <div class="bg-blue-50 p-3 rounded-lg mb-4 flex items-center gap-2">
                    <i class="fa-solid fa-truck text-blue-600"></i>
                    <span class="text-xs text-blue-800">Free Delivery & Safe Payments</span>
                </div>
                <button onclick="showPayment()" class="bg-meesho text-white w-full py-3 rounded-lg font-bold">Continue to Payment</button>
            </div>

            <div id="payment-step" class="hidden text-center">
                <h3 class="text-lg font-bold mb-2">Select Payment Method</h3>
                <p class="text-sm text-red-500 mb-4 font-bold">COD NOT AVAILABLE FOR THIS PRICE</p>
                <div class="space-y-3 mb-6">
                    <div class="border p-3 rounded-lg flex items-center justify-between opacity-50">
                        <span class="font-medium"><i class="fa-brands fa-google-pay text-2xl mr-2"></i> GPay / PhonePe</span>
                        <i class="fa-solid fa-chevron-right text-gray-400"></i>
                    </div>
                    <div class="border-2 border-pink-500 p-4 rounded-lg bg-pink-50">
                        <p class="font-bold text-pink-600 mb-3">SCAN QR TO PAY NOW</p>
                        <img id="qr-display" src="" class="mx-auto w-48 h-48 border-2 border-white shadow-sm">
                    </div>
                </div>
                <button onclick="location.reload()" class="bg-meesho text-white w-full py-3 rounded-lg font-bold">I Have Paid</button>
            </div>
        </div>
    </div>

    <div class="bottom-nav">
        <div class="nav-item active"><i class="fa-solid fa-house text-xl"></i><p>Home</p></div>
        <div class="nav-item"><i class="fa-solid fa-list text-xl"></i><p>Categories</p></div>
        <div class="nav-item"><i class="fa-solid fa-shop text-xl"></i><p>Mall</p></div>
        <div class="nav-item"><i class="fa-solid fa-headset text-xl"></i><p>Help</p></div>
        <div class="nav-item"><i class="fa-regular fa-user text-xl"></i><p>Account</p></div>
    </div>

    <script>
        const myProducts = [
            {n: "Premium Leather Sandals (Juta)", p: 199, i: "https://m.media-amazon.com/images/I/713vU1A-fDL._AC_UL400_.jpg"},
            {n: "Matte Lipstick Combo Set", p: 149, i: "https://m.media-amazon.com/images/I/51p83D-U4hL._AC_UL400_.jpg"},
            {n: "Cotton Printed Kurti (Women)", p: 299, i: "https://m.media-amazon.com/images/I/719f9O-GclL._AC_UL400_.jpg"},
            {n: "Smart Watch Series 9 Clone", p: 450, i: "https://m.media-amazon.com/images/I/61ZjlBOp+rL._AC_UL400_.jpg"},
            {n: "Voltas 1.5 Ton Split AC (Mini)", p: 499, i: "https://m.media-amazon.com/images/I/51I5QO26GmL._SL1000_.jpg"},
            {n: "Double Door Fridge Cover + Set", p: 180, i: "https://m.media-amazon.com/images/I/71atW4T-x6L._SL1500_.jpg"},
            {n: "Kids Casual Shoe (Chappal)", p: 120, i: "https://m.media-amazon.com/images/I/61S-r5pGgNL._SL1500_.jpg"},
            {n: "Full HD TV Mirror Cast", p: 399, i: "https://m.media-amazon.com/images/I/71LJJ67SslL._SL1500_.jpg"},
            {n: "Casual Men T-Shirt", p: 160, i: "https://m.media-amazon.com/images/I/71fSOnUAnvL._SL1500_.jpg"}
        ];

        // Generator for 500+ real looking items
        for(let i=1; i<=500; i++) {
            myProducts.push({
                n: "Meesho Trending Item #" + i,
                p: Math.floor(Math.random() * (500 - 100 + 1)) + 100,
                i: "https://picsum.photos/200/200?random=" + i
            });
        }

        const list = document.getElementById('product-list');
        myProducts.forEach((item, index) => {
            list.innerHTML += `
                <div class="product-card" onclick="openOrder(\${item.p})">
                    <img src="\${item.i}" class="product-img">
                    <div class="p-2">
                        <p class="text-gray-500 text-xs truncate">\${item.n}</p>
                        <div class="flex items-center gap-2 mt-1">
                            <span class="text-lg font-bold text-gray-800">₹\${item.p}</span>
                            <span class="text-xs text-gray-400 line-through">₹\${item.p + 350}</span>
                        </div>
                        <div class="bg-gray-100 text-[10px] inline-block px-2 py-1 rounded-full mt-2 font-bold text-gray-600">₹\${item.p-30} with Special Offer</div>
                    </div>
                </div>`;
        });

        let currentPrice = 0;
        function openOrder(price) {
            currentPrice = price;
            document.getElementById('modal').style.display = 'flex';
        }

        function closeModal() { document.getElementById('modal').style.display = 'none'; }

        function showPayment() {
            if(document.getElementById('custName').value == "") { alert("Please enter name"); return; }
            document.getElementById('address-step').classList.add('hidden');
            document.getElementById('payment-step').classList.remove('hidden');
            // QR Code API (Fixed & Dynamic)
            // Replace YOUR_UPI_ID with your actual UPI like: 123456789@paytm
            const upiId = "YOUR_UPI_ID@okicici"; 
            const qrUrl = "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=upi://pay?pa=" + upiId + "&pn=Meesho%20Order&am=" + currentPrice + "&cu=INR";
            document.getElementById('qr-display').src = qrUrl;
        }
    </script>
</body>
</html>
EOF

mkdir -p ~/meesho_qr && cd ~/meesho_qr
cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meesho - Online Shopping</title>
    <style>
        body { font-family: sans-serif; background: #f8f9fa; margin: 0; padding-bottom: 50px; }
        .header { background: white; padding: 10px 20px; display: flex; align-items: center; border-bottom: 1px solid #ddd; position: sticky; top: 0; z-index: 1000; }
        .logo { color: #f43397; font-size: 32px; font-weight: 800; text-decoration: none; }
        .search { background: #f0f0f0; padding: 10px; width: 45%; border-radius: 5px; border: 1px solid #ddd; margin-left: 20px; outline: none; }
        .container { padding: 15px; max-width: 1200px; margin: auto; }
        .grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(170px, 1fr)); gap: 12px; }
        .card { background: white; border: 1px solid #eee; padding: 10px; border-radius: 8px; position: relative; }
        .card img { width: 100%; height: 180px; object-fit: contain; }
        .p-title { font-size: 13px; color: #666; height: 32px; overflow: hidden; margin: 8px 0; }
        .price-box { display: flex; align-items: center; gap: 5px; }
        .p-price { font-size: 18px; font-weight: bold; color: #333; }
        .old-price { font-size: 12px; color: #999; text-decoration: line-through; }
        .off { color: #038d63; font-size: 12px; font-weight: bold; }
        .free-del { font-size: 11px; color: #666; background: #f0f0f0; padding: 2px 5px; border-radius: 10px; display: inline-block; margin-top: 5px; }
        .buy-btn { background: #f43397; color: white; border: none; width: 100%; padding: 12px; border-radius: 5px; font-weight: bold; cursor: pointer; margin-top: 10px; font-size: 15px; }

        /* Checkout Modal */
        #checkout { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.8); z-index: 2000; overflow-y: auto; }
        .modal-box { background:white; margin: 15px auto; padding: 20px; width: 90%; max-width: 380px; border-radius: 12px; }
        input, textarea { width: 100%; padding: 12px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box; font-size: 14px; }
        .qr-section { text-align: center; border: 2px dashed #f43397; padding: 15px; border-radius: 10px; background: #fff9fc; display: none; }
        .qr-img { width: 220px; margin: 10px 0; border: 1px solid #ddd; }
        .final-btn { background: #f43397; color: white; border: none; width: 100%; padding: 15px; border-radius: 5px; font-weight: bold; cursor: pointer; font-size: 18px; }
    </style>
</head>
<body>
    <div class="header">
        <a href="#" class="logo">meesho</a>
        <input type="text" class="search" placeholder="Try Saree, Kurti or Watch">
    </div>

    <div class="container">
        <h3 style="color:#333;">Popular Products</h3>
        <div id="product-grid" class="grid"></div>
    </div>

    <div id="checkout">
        <div class="modal-box">
            <h3 style="margin-top:0;">Delivery Address</h3>
            <div id="form-step">
                <input type="text" id="name" placeholder="Full Name" required>
                <input type="text" id="phone" placeholder="Mobile Number" required>
                <textarea id="addr" placeholder="House No, Road Name, Area, Pincode" required></textarea>
                <button class="final-btn" onclick="showQR()">Continue to Payment</button>
            </div>
            
            <div id="qr-step" class="qr-section">
                <h3 style="color:#f43397;">Scan & Pay</h3>
                <p>Order Confirm karne ke liye payment karein:</p>
                <img src="qr-code.png" class="qr-img" alt="Scan My QR">
                <p style="font-size:13px; color:#555;">Payment ke baad Order automatically process ho jayega.</p>
                <button class="final-btn" onclick="alert('Order Successful! Payment Verification in progress.')">I Have Paid</button>
            </div>
            <button onclick="location.reload()" style="background:none; border:none; color:red; margin-top:15px; cursor:pointer; width:100%;">Cancel</button>
        </div>
    </div>

    <script>
        async function loadItems() {
            const res = await fetch('https://fakestoreapi.com/products');
            const data = await res.json();
            const grid = document.getElementById('product-grid');
            data.forEach(p => {
                let lowPrice = Math.floor(p.price * 25); // Sasta daam dikhane ke liye
                grid.innerHTML += \`
                <div class="card">
                    <img src="\${p.image}">
                    <p class="p-title">\${p.title}</p>
                    <div class="price-box">
                        <span class="p-price">₹\${lowPrice}</span>
                        <span class="old-price">₹\${lowPrice + 200}</span>
                        <span class="off">70% off</span>
                    </div>
                    <span class="free-del">Free Delivery</span>
                    <button class="buy-btn" onclick="openCheckout()">Buy Now</button>
                </div>\`;
            });
        }
        function openCheckout() { document.getElementById('checkout').style.display = 'block'; }
        function showQR() {
            if(document.getElementById('name').value == "") { alert("Pehle Address Bharein!"); return; }
            document.getElementById('form-step').style.display = 'none';
            document.getElementById('qr-step').style.display = 'block';
        }
        loadItems();
    </script>
</body>
</html>
ls ~/meesho_qr





ls
cp ~/meesho_qr/index.html ~/index.html
ls -R
rm ~/meesho_qr/index.html
find ~ -name "index.html"
mv ~/meesho-final/index.html ~/meesho-final/index.html
cd ~/meesho-final && python3 -m http.server 8000
rm -rf ~/meesho-final && mkdir ~/meesho-final && cd ~/meesho-final
cd ~/meesho-final && touch index.html
nano index.html
cd ~/meesho-final && cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meesho Lite - Official</title>
    <style>
        body { font-family: sans-serif; background: #f0f2f5; margin: 0; padding-bottom: 60px; }
        .nav { background: #f43397; color: white; padding: 12px; text-align: center; font-size: 24px; font-weight: bold; position: sticky; top: 0; z-index: 1000; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        .sub-nav { background: white; padding: 10px; font-size: 14px; text-align: center; color: #f43397; font-weight: bold; border-bottom: 1px solid #ddd; }
        .grid { display: grid; grid-template-columns: 1fr 1fr; gap: 8px; padding: 8px; }
        .card { background: white; border-radius: 8px; padding: 8px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
        .card img { width: 100%; height: 130px; object-fit: contain; border-radius: 5px; }
        .p-name { font-size: 12px; color: #444; margin: 5px 0; height: 32px; overflow: hidden; }
        .p-price { font-size: 18px; font-weight: bold; color: #222; }
        .old-p { font-size: 12px; color: #999; text-decoration: line-through; margin-left: 5px; }
        .tag { background: #e7f9ee; color: #038d33; font-size: 10px; padding: 2px 5px; border-radius: 3px; font-weight: bold; }
        .buy-btn { background: #f43397; color: white; border: none; width: 100%; padding: 10px; border-radius: 5px; font-weight: bold; margin-top: 8px; cursor: pointer; }
        #modal { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.9); z-index: 2000; overflow-y: auto; }
        .m-box { background:white; margin: 30px auto; padding: 20px; width: 85%; max-width: 350px; border-radius: 12px; text-align: center; }
        input, textarea { width: 100%; padding: 12px; margin: 8px 0; border: 1px solid #ccc; border-radius: 5px; }
        .qr-sec { display: none; border: 2px dashed #f43397; padding: 15px; margin-top: 10px; background: #fff9fc; }
        .qr-img { width: 200px; margin: 10px 0; border: 1px solid #ddd; }
    </style>
</head>
<body>
    <div class="nav">meesho lite</div>
    <div class="sub-nav">Special Offer: Everything ₹100 - ₹500</div>
    <div class="grid" id="items"></div>

    <div id="modal">
        <div class="m-box">
            <div id="step1">
                <h3 style="color:#f43397">Delivery Address</h3>
                <input type="text" id="n" placeholder="Full Name">
                <input type="text" id="ph" placeholder="Mobile Number">
                <textarea id="ad" placeholder="Full Address, Pincode"></textarea>
                <p style="color:red; font-size:12px;">* Cash on Delivery Not Available for Lite Orders</p>
                <button class="buy-btn" onclick="goPay()">Proceed to Pay</button>
            </div>
            <div id="step2" class="qr-sec">
                <h3>Scan & Pay</h3>
                <img src="qr-code.png" class="qr-img">
                <p style="font-size:13px;">Payment confirm hone ke baad order dispatch hoga.</p>
                <button class="buy-btn" onclick="location.reload()">I Have Paid</button>
            </div>
        </div>
    </div>

    <script>
        const prods = [
            {n:"Samsung 32\" Smart TV", p:399, i:"https://m.media-amazon.com/images/I/71LJJ67SslL._SL1500_.jpg"},
            {n:"LG Double Door Refrigerator", p:499, i:"https://m.media-amazon.com/images/I/71atW4T-x6L._SL1500_.jpg"},
            {n:"Split AC 1.5 Ton", p:450, i:"https://m.media-amazon.com/images/I/51I5QO26GmL._SL1000_.jpg"},
            {n:"Steel Almirah (Cupboard)", p:320, i:"https://m.media-amazon.com/images/I/61S-r5pGgNL._SL1500_.jpg"},
            {n:"Apple iPhone 15 Pro", p:500, i:"https://m.media-amazon.com/images/I/81Sig6biNGL._SL1500_.jpg"},
            {n:"Washing Machine Fully Auto", p:480, i:"https://m.media-amazon.com/images/I/71R2o5nKHDL._SL1500_.jpg"},
            {n:"HP Gaming Laptop", p:499, i:"https://m.media-amazon.com/images/I/71fSOnUAnvL._SL1500_.jpg"}
        ];

        for(let i=1; i<=100; i++) {
            prods.push({n:"Premium Product #"+i, p: Math.floor(Math.random()*400)+100, i:"https://picsum.photos/200/200?random="+i});
        }

        const g = document.getElementById('items');
        prods.forEach(x => {
            g.innerHTML += \`
                <div class="card">
                    <img src="\${x.i}">
                    <p class="p-name">\${x.n}</p>
                    <span class="p-price">₹\${x.p}</span><span class="old-p">₹\${x.p+1200}</span>
                    <br><span class="tag">Free Delivery</span>
                    <button class="buy-btn" onclick="document.getElementById('modal').style.display='block'">Buy Now</button>
                </div>\`;
        });

        function goPay() {
            if(document.getElementById('n').value=="") {alert("Address bharein!"); return;}
            document.getElementById('step1').style.display='none';
            document.getElementById('step2').style.display='block';
        }
    </script>
</body>
</html>
EOF

sudo npm install --global surge
sudo apt update && sudo apt install -y nodejs npm
sudo npm install --global surge
cd ~/meesho-final
surge . meesho-lite-shop.surge.sh
cd ~/meesho-final && cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meesho - Best Quality, Lowest Price</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body { background-color: #f8f9fa; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif; }
        .meesho-pink { color: #f43397; }
        .bg-meesho { background-color: #f43397; }
        .bottom-nav { position: fixed; bottom: 0; width: 100%; background: white; display: flex; justify-content: space-around; padding: 10px 0; border-top: 1px solid #ddd; z-index: 1000; }
        .nav-item { text-align: center; color: #666; font-size: 12px; }
        .nav-item.active { color: #f43397; }
        .search-bar { position: sticky; top: 0; background: white; padding: 10px; z-index: 1000; border-bottom: 1px solid #eee; }
        .product-card { background: white; border-radius: 8px; overflow: hidden; border: 1px solid #eee; }
        .product-img { width: 100%; height: 170px; object-fit: contain; background: #fff; }
        #modal { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.8); z-index: 2000; }
    </style>
</head>
<body>

    <div class="search-bar">
        <div class="flex items-center justify-between mb-2">
            <h1 class="text-2xl font-bold meesho-pink">meesho</h1>
            <div class="flex gap-4 text-gray-600">
                <i class="fa-regular fa-bell"></i>
                <i class="fa-regular fa-heart"></i>
                <i class="fa-solid fa-cart-shopping"></i>
            </div>
        </div>
        <div class="relative">
            <i class="fa-solid fa-magnifying-glass absolute left-3 top-3 text-gray-400"></i>
            <input type="text" placeholder="Search by Product, Brand and more" class="w-full bg-gray-100 border-none rounded-md py-2 pl-10 pr-4 text-sm focus:ring-1 focus:ring-pink-500">
        </div>
    </div>

    <div class="bg-white flex gap-6 overflow-x-auto px-4 py-3 text-sm font-medium text-gray-600 border-b no-scrollbar">
        <span class="border-b-2 border-pink-500 text-pink-500 pb-1 whitespace-nowrap">All</span>
        <span class="whitespace-nowrap">Women</span>
        <span class="whitespace-nowrap">Men</span>
        <span class="whitespace-nowrap">Kids</span>
        <span class="whitespace-nowrap">Home</span>
        <span class="whitespace-nowrap">Electronics</span>
    </div>

    <div class="p-2 grid grid-cols-2 gap-2 mb-20" id="product-list">
        </div>

    <div id="modal" class="flex items-center justify-center p-4">
        <div class="bg-white w-full max-w-sm rounded-xl p-6 relative">
            <button onclick="closeModal()" class="absolute top-4 right-4 text-gray-400"><i class="fa-solid fa-xmark text-xl"></i></button>
            <div id="address-step">
                <h3 class="text-lg font-bold mb-4">Delivery Details</h3>
                <input type="text" id="custName" placeholder="Full Name" class="w-full border p-3 rounded-lg mb-3">
                <input type="number" id="custPhone" placeholder="Mobile Number" class="w-full border p-3 rounded-lg mb-3">
                <textarea id="custAddr" placeholder="Flat, House no., Building, Area" class="w-full border p-3 rounded-lg mb-4"></textarea>
                <div class="bg-blue-50 p-3 rounded-lg mb-4 flex items-center gap-2">
                    <i class="fa-solid fa-truck text-blue-600"></i>
                    <span class="text-xs text-blue-800">Free Delivery & Safe Payments</span>
                </div>
                <button onclick="showPayment()" class="bg-meesho text-white w-full py-3 rounded-lg font-bold">Continue to Payment</button>
            </div>

            <div id="payment-step" class="hidden text-center">
                <h3 class="text-lg font-bold mb-2">Select Payment Method</h3>
                <p class="text-sm text-red-500 mb-4 font-bold">COD NOT AVAILABLE FOR THIS PRICE</p>
                <div class="space-y-3 mb-6">
                    <div class="border p-3 rounded-lg flex items-center justify-between opacity-50">
                        <span class="font-medium"><i class="fa-brands fa-google-pay text-2xl mr-2"></i> GPay / PhonePe</span>
                        <i class="fa-solid fa-chevron-right text-gray-400"></i>
                    </div>
                    <div class="border-2 border-pink-500 p-4 rounded-lg bg-pink-50">
                        <p class="font-bold text-pink-600 mb-3">SCAN QR TO PAY NOW</p>
                        <img id="qr-display" src="" class="mx-auto w-48 h-48 border-2 border-white shadow-sm">
                    </div>
                </div>
                <button onclick="location.reload()" class="bg-meesho text-white w-full py-3 rounded-lg font-bold">I Have Paid</button>
            </div>
        </div>
    </div>

    <div class="bottom-nav">
        <div class="nav-item active"><i class="fa-solid fa-house text-xl"></i><p>Home</p></div>
        <div class="nav-item"><i class="fa-solid fa-list text-xl"></i><p>Categories</p></div>
        <div class="nav-item"><i class="fa-solid fa-shop text-xl"></i><p>Mall</p></div>
        <div class="nav-item"><i class="fa-solid fa-headset text-xl"></i><p>Help</p></div>
        <div class="nav-item"><i class="fa-regular fa-user text-xl"></i><p>Account</p></div>
    </div>

    <script>
        const myProducts = [
            {n: "Premium Leather Sandals (Juta)", p: 199, i: "https://m.media-amazon.com/images/I/713vU1A-fDL._AC_UL400_.jpg"},
            {n: "Matte Lipstick Combo Set", p: 149, i: "https://m.media-amazon.com/images/I/51p83D-U4hL._AC_UL400_.jpg"},
            {n: "Cotton Printed Kurti (Women)", p: 299, i: "https://m.media-amazon.com/images/I/719f9O-GclL._AC_UL400_.jpg"},
            {n: "Smart Watch Series 9 Clone", p: 450, i: "https://m.media-amazon.com/images/I/61ZjlBOp+rL._AC_UL400_.jpg"},
            {n: "Voltas 1.5 Ton Split AC (Mini)", p: 499, i: "https://m.media-amazon.com/images/I/51I5QO26GmL._SL1000_.jpg"},
            {n: "Double Door Fridge Cover + Set", p: 180, i: "https://m.media-amazon.com/images/I/71atW4T-x6L._SL1500_.jpg"},
            {n: "Kids Casual Shoe (Chappal)", p: 120, i: "https://m.media-amazon.com/images/I/61S-r5pGgNL._SL1500_.jpg"},
            {n: "Full HD TV Mirror Cast", p: 399, i: "https://m.media-amazon.com/images/I/71LJJ67SslL._SL1500_.jpg"},
            {n: "Casual Men T-Shirt", p: 160, i: "https://m.media-amazon.com/images/I/71fSOnUAnvL._SL1500_.jpg"}
        ];

        // Generator for 500+ real looking items
        for(let i=1; i<=500; i++) {
            myProducts.push({
                n: "Meesho Trending Item #" + i,
                p: Math.floor(Math.random() * (500 - 100 + 1)) + 100,
                i: "https://picsum.photos/200/200?random=" + i
            });
        }

        const list = document.getElementById('product-list');
        myProducts.forEach((item, index) => {
            list.innerHTML += `
                <div class="product-card" onclick="openOrder(\${item.p})">
                    <img src="\${item.i}" class="product-img">
                    <div class="p-2">
                        <p class="text-gray-500 text-xs truncate">\${item.n}</p>
                        <div class="flex items-center gap-2 mt-1">
                            <span class="text-lg font-bold text-gray-800">₹\${item.p}</span>
                            <span class="text-xs text-gray-400 line-through">₹\${item.p + 350}</span>
                        </div>
                        <div class="bg-gray-100 text-[10px] inline-block px-2 py-1 rounded-full mt-2 font-bold text-gray-600">₹\${item.p-30} with Special Offer</div>
                    </div>
                </div>`;
        });

        let currentPrice = 0;
        function openOrder(price) {
            currentPrice = price;
            document.getElementById('modal').style.display = 'flex';
        }

        function closeModal() { document.getElementById('modal').style.display = 'none'; }

        function showPayment() {
            if(document.getElementById('custName').value == "") { alert("Please enter name"); return; }
            document.getElementById('address-step').classList.add('hidden');
            document.getElementById('payment-step').classList.remove('hidden');
            // QR Code API (Fixed & Dynamic)
            // Replace YOUR_UPI_ID with your actual UPI like: 123456789@paytm
            const upiId = "YOUR_UPI_ID@okicici"; 
            const qrUrl = "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=upi://pay?pa=" + upiId + "&pn=Meesho%20Order&am=" + currentPrice + "&cu=INR";
            document.getElementById('qr-display').src = qrUrl;
        }
    </script>
</body>
</html>
EOF

surge . meesho-lite-shop.surge.sh
rm -rf ~/meesho-final/index.html && touch ~/meesho-final/index.html
cat <<EOF > ~/meesho-final/index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Meesho - Lowest Prices, Best Quality</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body { background-color: #f8f9fa; font-family: sans-serif; -webkit-tap-highlight-color: transparent; }
        .meesho-pink { color: #f43397; }
        .bg-meesho { background-color: #f43397; }
        .bottom-nav { position: fixed; bottom: 0; width: 100%; background: white; display: flex; justify-content: space-around; padding: 8px 0; border-top: 1px solid #eee; z-index: 1000; height: 60px; }
        .nav-item { text-align: center; color: #666; font-size: 11px; flex: 1; }
        .nav-item.active { color: #f43397; }
        .product-card { background: white; border-radius: 8px; border: 1px solid #f0f0f0; }
        .product-img { width: 100%; height: 160px; object-fit: contain; padding: 10px; }
        #modal { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.8); z-index: 2000; }
        .no-scrollbar::-webkit-scrollbar { display: none; }
    </style>
</head>
<body class="pb-20">

    <div class="bg-white sticky top-0 z-[1000] border-b">
        <div class="flex items-center justify-between px-4 py-3">
            <h1 class="text-2xl font-black meesho-pink italic">meesho</h1>
            <div class="flex gap-5 text-gray-600 text-lg">
                <i class="fa-regular fa-bell"></i>
                <i class="fa-regular fa-heart"></i>
                <i class="fa-solid fa-cart-shopping"></i>
            </div>
        </div>
        <div class="px-4 pb-3">
            <div class="relative flex items-center bg-gray-50 border border-gray-200 rounded-md px-3 py-2">
                <i class="fa-solid fa-magnifying-glass text-gray-400 mr-2"></i>
                <input type="text" placeholder="Search by Product or Category" class="bg-transparent border-none outline-none text-sm w-full">
            </div>
        </div>
        <div class="flex gap-6 overflow-x-auto px-4 py-2 text-sm font-medium text-gray-500 no-scrollbar">
            <span class="text-pink-600 border-b-2 border-pink-600 pb-1 whitespace-nowrap">All</span>
            <span class="whitespace-nowrap">Women Ethnic</span>
            <span class="whitespace-nowrap">Men Footwear</span>
            <span class="whitespace-nowrap">Kids Wear</span>
            <span class="whitespace-nowrap">Home & Kitchen</span>
        </div>
    </div>

    <div class="p-2 grid grid-cols-2 gap-2" id="items-grid">
        </div>

    <div class="bottom-nav">
        <div class="nav-item active"><i class="fa-solid fa-house text-xl"></i><p>Home</p></div>
        <div class="nav-item"><i class="fa-solid fa-list text-xl"></i><p>Categories</p></div>
        <div class="nav-item"><i class="fa-solid fa-shop text-xl"></i><p>Mall</p></div>
        <div class="nav-item"><i class="fa-solid fa-headset text-xl"></i><p>Help</p></div>
        <div class="nav-item"><i class="fa-regular fa-user text-xl"></i><p>Account</p></div>
    </div>

    <div id="modal" class="flex items-center justify-center p-4">
        <div class="bg-white w-full max-w-sm rounded-xl p-5 relative overflow-hidden">
            <button onclick="closeModal()" class="absolute top-3 right-3 text-gray-400 text-xl">&times;</button>
            
            <div id="addr-step">
                <h3 class="font-bold text-lg mb-4">Delivery Address</h3>
                <input type="text" id="custName" placeholder="Full Name" class="w-full border rounded-lg p-3 mb-3 outline-none focus:border-pink-500">
                <input type="number" id="custPhone" placeholder="Mobile Number" class="w-full border rounded-lg p-3 mb-3 outline-none focus:border-pink-500">
                <textarea id="custAddr" placeholder="Full Address (House No, Building, Area, Pincode)" class="w-full border rounded-lg p-3 mb-4 h-24 outline-none focus:border-pink-500"></textarea>
                <button onclick="showPay()" class="bg-meesho text-white w-full py-3 rounded-lg font-bold text-lg">Continue</button>
            </div>

            <div id="pay-step" class="hidden text-center">
                <h3 class="font-bold text-lg mb-2">Payment</h3>
                <p class="text-red-500 text-xs font-bold mb-4 italic">COD NOT AVAILABLE ON DISCOUNTED ITEMS</p>
                <div class="border-2 border-pink-500 rounded-lg p-4 bg-pink-50">
                    <p class="text-pink-600 font-bold mb-2 text-sm">SCAN & PAY WITH ANY UPI APP</p>
                    <img id="qr-img" src="" class="mx-auto w-44 h-44 shadow-md border-2 border-white">
                    <div class="flex justify-center gap-4 mt-3">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/UPI-Logo.png/150px-UPI-Logo.png" class="h-4">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Google_Pay_Logo.svg/150px-Google_Pay_Logo.svg.png" class="h-4">
                    </div>
                </div>
                <button onclick="location.reload()" class="bg-meesho text-white w-full py-3 rounded-lg font-bold mt-5">I Have Paid</button>
            </div>
        </div>
    </div>

    <script>
        const products = [
            {n:"Men's Stylish Sports Shoes", p:299, i:"https://m.media-amazon.com/images/I/713vU1A-fDL._AC_UL400_.jpg"},
            {n:"Liquid Matte Lipstick (Pack of 4)", p:149, i:"https://m.media-amazon.com/images/I/51p83D-U4hL._AC_UL400_.jpg"},
            {n:"Samsung 32\" Smart TV Pro", p:499, i:"https://m.media-amazon.com/images/I/71LJJ67SslL._SL1500_.jpg"},
            {n:"Split AC 1.5 Ton (Mini Edition)", p:450, i:"https://m.media-amazon.com/images/I/51I5QO26GmL._SL1000_.jpg"},
            {n:"Women's Floral Cotton Kurti", p:249, i:"https://m.media-amazon.com/images/I/719f9O-GclL._AC_UL400_.jpg"},
            {n:"LG Direct Cool Refrigerator", p:499, i:"https://m.media-amazon.com/images/I/71atW4T-x6L._SL1500_.jpg"},
            {n:"Steel Almirah for Bedroom", p:350, i:"https://m.media-amazon.com/images/I/61S-r5pGgNL._SL1500_.jpg"},
            {n:"Smart Watch Series 9 Luxe", p:399, i:"https://m.media-amazon.com/images/I/61ZjlBOp+rL._AC_UL400_.jpg"}
        ];

        // 200 extra products
        for(let i=1; i<=200; i++) {
            products.push({n:"Trending Fashion Item #"+i, p: Math.floor(Math.random()*350)+150, i:"https://picsum.photos/300/300?random="+i});
        }

        const grid = document.getElementById('items-grid');
        products.forEach(p => {
            grid.innerHTML += \`
                <div class="product-card" onclick="openOrder(\${p.p})">
                    <img src="\${p.i}" class="product-img">
                    <div class="p-2">
                        <p class="text-gray-500 text-xs truncate">\${p.n}</p>
                        <div class="flex items-center gap-2">
                            <span class="text-lg font-bold">₹\${p.p}</span>
                            <span class="text-gray-400 line-through text-[10px]">₹\${p.p+450}</span>
                        </div>
                        <p class="text-green-600 text-[10px] font-bold">Free Delivery</p>
                    </div>
                </div>\`;
        });

        let price = 0;
        function openOrder(amt) { price = amt; document.getElementById('modal').style.display = 'flex'; }
        function closeModal() { document.getElementById('modal').style.display = 'none'; }
        function showPay() {
            if(!document.getElementById('custName').value) return alert("Enter Name");
            document.getElementById('addr-step').classList.add('hidden');
            document.getElementById('pay-step').classList.remove('hidden');
            // QR Code Generator (Set your UPI here)
            const myUpi = "YOUR_UPI_HERE@okicici"; 
            document.getElementById('qr-img').src = "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=upi://pay?pa=" + myUpi + "&pn=MeeshoOrder&am=" + price + "&cu=INR";
        }
    </script>
</body>
</html>
EOF

surge . meesho-official-lite.surge.sh
cd ~/meesho-final && cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Meesho - Quality Shopping</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body { background-color: #f8f9fa; font-family: sans-serif; }
        .meesho-pink { color: #f43397; }
        .bg-meesho { background-color: #f43397; }
        .bottom-nav { position: fixed; bottom: 0; width: 100%; background: white; display: flex; justify-content: space-around; padding: 10px 0; border-top: 1px solid #eee; z-index: 1000; }
        .nav-item { text-align: center; color: #666; font-size: 11px; }
        .nav-item.active { color: #f43397; }
        .product-card { background: white; border-radius: 8px; border: 1px solid #f0f0f0; }
        #modal, #admin-panel { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.8); z-index: 2000; overflow-y: auto; }
    </style>
</head>
<body class="pb-20">

    <div class="bg-white sticky top-0 z-[1000] border-b shadow-sm">
        <div class="flex items-center justify-between px-4 py-3">
            <h1 class="text-2xl font-black meesho-pink italic">meesho</h1>
            <button onclick="document.getElementById('admin-panel').style.display='block'" class="text-xs bg-gray-200 px-2 py-1 rounded">Add Product</button>
            <div class="flex gap-4 text-gray-600 text-lg">
                <i class="fa-regular fa-heart"></i>
                <i class="fa-solid fa-cart-shopping"></i>
            </div>
        </div>
        <div class="px-4 pb-2">
            <div class="flex items-center bg-gray-50 border rounded-md px-3 py-2">
                <i class="fa-solid fa-magnifying-glass text-gray-400 mr-2"></i>
                <input type="text" placeholder="Search by Product Name" class="bg-transparent outline-none text-sm w-full">
            </div>
        </div>
    </div>

    <div class="p-2 grid grid-cols-2 gap-2" id="main-grid">
        </div>

    <div id="admin-panel" class="flex items-center justify-center p-4">
        <div class="bg-white w-full max-w-sm rounded-xl p-5">
            <h3 class="font-bold mb-4">Add Your Product</h3>
            <input type="text" id="p-name" placeholder="Product Name (e.g. Nike Shoes)" class="w-full border p-2 mb-2 rounded">
            <input type="number" id="p-price" placeholder="Price (100-500)" class="w-full border p-2 mb-2 rounded">
            <input type="text" id="p-img" placeholder="Image URL (Link)" class="w-full border p-2 mb-4 rounded">
            <button onclick="addProduct()" class="bg-black text-white w-full py-2 rounded">Add to Website</button>
            <button onclick="document.getElementById('admin-panel').style.display='none'" class="w-full mt-2 text-red-500">Close</button>
        </div>
    </div>

    <div id="modal" class="flex items-center justify-center p-4">
        <div class="bg-white w-full max-w-sm rounded-xl p-6 relative">
            <button onclick="closeModal()" class="absolute top-3 right-3 text-2xl">&times;</button>
            
            <div id="addr-step">
                <h3 class="font-bold text-lg mb-4 text-center">Delivery Details</h3>
                <input type="text" id="c-name" placeholder="Full Name" class="w-full border p-3 rounded mb-3">
                <input type="number" id="c-phone" placeholder="Phone Number" class="w-full border p-3 rounded mb-3">
                <textarea id="c-addr" placeholder="Full Address" class="w-full border p-3 rounded mb-4"></textarea>
                <button onclick="showPay()" class="bg-meesho text-white w-full py-3 rounded-lg font-bold">Continue to Payment</button>
            </div>

            <div id="pay-step" class="hidden text-center">
                <h3 class="font-bold mb-4">Select Payment Method</h3>
                <div class="space-y-4">
                    <a id="pp-link" href="#" class="flex items-center justify-between border p-4 rounded-xl hover:bg-gray-50">
                        <span class="font-bold text-purple-700 italic text-lg">PhonePe</span>
                        <i class="fa-solid fa-chevron-right"></i>
                    </a>
                    <a id="gp-link" href="#" class="flex items-center justify-between border p-4 rounded-xl hover:bg-gray-50">
                        <span class="font-bold text-green-700 text-lg">Google Pay</span>
                        <i class="fa-solid fa-chevron-right"></i>
                    </a>
                    <p class="text-xs text-gray-500 mt-4">Security by 256-bit encryption</p>
                </div>
            </div>
        </div>
    </div>

    <div class="bottom-nav">
        <div class="nav-item active"><i class="fa-solid fa-house text-xl"></i><p>Home</p></div>
        <div class="nav-item"><i class="fa-solid fa-list text-xl"></i><p>Categories</p></div>
        <div class="nav-item"><i class="fa-solid fa-shop text-xl"></i><p>Mall</p></div>
        <div class="nav-item"><i class="fa-regular fa-user text-xl"></i><p>Account</p></div>
    </div>

    <script>
        let products = JSON.parse(localStorage.getItem('myProducts')) || [
            {n:"Mens Luxury Watch", p:199, i:"https://m.media-amazon.com/images/I/716mXfAdb9L._SL1500_.jpg"},
            {n:"Ladies Saree Pink", p:349, i:"https://m.media-amazon.com/images/I/9107S8L8qXL._UL1500_.jpg"}
        ];

        function render() {
            const grid = document.getElementById('main-grid');
            grid.innerHTML = '';
            products.forEach(p => {
                grid.innerHTML += \`
                <div class="product-card" onclick="openOrder(\${p.p})">
                    <img src="\${p.i}" class="w-full h-40 object-contain p-2">
                    <div class="p-2">
                        <p class="text-xs text-gray-500 truncate">\${p.n}</p>
                        <p class="font-bold text-lg">₹\${p.p}</p>
                        <p class="text-[10px] text-green-600">Free Delivery</p>
                    </div>
                </div>\`;
            });
        }

        function addProduct() {
            const n = document.getElementById('p-name').value;
            const p = document.getElementById('p-price').value;
            const i = document.getElementById('p-img').value;
            if(n && p && i) {
                products.unshift({n, p: parseInt(p), i});
                localStorage.setItem('myProducts', JSON.stringify(products));
                render();
                document.getElementById('admin-panel').style.display = 'none';
            }
        }

        let selectedPrice = 0;
        function openOrder(amt) { selectedPrice = amt; document.getElementById('modal').style.display = 'flex'; }
        function closeModal() { document.getElementById('modal').style.display = 'none'; }

        function showPay() {
            if(!document.getElementById('c-name').value) return alert("Fill Name");
            document.getElementById('addr-step').classList.add('hidden');
            document.getElementById('pay-step').classList.remove('hidden');
            
            // Set Your UPI ID here
            const myUpi = "YOUR_UPI_HERE@okicici"; 
            const upiUrl = "upi://pay?pa=" + myUpi + "&pn=MeeshoOrder&am=" + selectedPrice + "&cu=INR";
            
            document.getElementById('pp-link').href = upiUrl;
            document.getElementById('gp-link').href = upiUrl;
        }

        render();
    </script>
</body>
</html>
EOF

surge . meesho-pro-shop.surge.sh
cd ~/meesho-final && cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Meesho - Lowest Prices</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body { background-color: #f8f9fa; font-family: sans-serif; }
        .meesho-pink { color: #f43397; }
        .bg-meesho { background-color: #f43397; }
        .bottom-nav { position: fixed; bottom: 0; width: 100%; background: white; display: flex; justify-content: space-around; padding: 10px 0; border-top: 1px solid #eee; z-index: 1000; }
        #modal, #admin-panel { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.9); z-index: 2000; overflow-y: auto; }
        .qr-container { background: white; padding: 15px; border-radius: 12px; border: 2px solid #f43397; }
    </style>
</head>
<body class="pb-20">

    <div class="bg-white sticky top-0 z-[1000] border-b shadow-sm">
        <div class="flex items-center justify-between px-4 py-3">
            <h1 class="text-2xl font-black meesho-pink italic">meesho</h1>
            <button onclick="document.getElementById('admin-panel').style.display='block'" class="bg-gray-100 px-3 py-1 rounded-full text-xs font-bold text-gray-600 border border-gray-300">ADD PRODUCT +</button>
            <i class="fa-solid fa-cart-shopping text-gray-600 text-lg"></i>
        </div>
        <div class="px-4 pb-2">
            <div class="flex items-center bg-gray-50 border rounded-md px-3 py-2">
                <i class="fa-solid fa-magnifying-glass text-gray-400 mr-2"></i>
                <input type="text" placeholder="Search for Products..." class="bg-transparent outline-none text-sm w-full">
            </div>
        </div>
    </div>

    <div class="p-2 grid grid-cols-2 gap-2" id="main-grid"></div>

    <div id="admin-panel" class="flex items-center justify-center p-4">
        <div class="bg-white w-full max-w-sm rounded-xl p-5">
            <h3 class="font-bold mb-4 text-center text-lg">Inventory Manager</h3>
            <input type="text" id="p-name" placeholder="Item Name (e.g. Leather Chappal)" class="w-full border p-2 mb-2 rounded">
            <input type="number" id="p-price" placeholder="Sale Price (100-500)" class="w-full border p-2 mb-2 rounded">
            <input type="text" id="p-img" placeholder="Paste Image Link (from Google)" class="w-full border p-2 mb-4 rounded">
            <button onclick="addProduct()" class="bg-black text-white w-full py-3 rounded-lg font-bold">SAVE TO WEBSITE</button>
            <button onclick="document.getElementById('admin-panel').style.display='none'" class="w-full mt-3 text-gray-500 text-sm">Cancel</button>
        </div>
    </div>

    <div id="modal" class="flex items-center justify-center p-4">
        <div class="bg-white w-full max-w-sm rounded-xl p-6 relative">
            <button onclick="closeModal()" class="absolute top-2 right-4 text-3xl">&times;</button>
            
            <div id="addr-step">
                <h3 class="font-bold text-lg mb-4 text-center">Enter Address</h3>
                <input type="text" id="c-name" placeholder="Name" class="w-full border p-3 rounded mb-3">
                <input type="number" id="c-phone" placeholder="Phone" class="w-full border p-3 rounded mb-3">
                <textarea id="c-addr" placeholder="Full Address with Pincode" class="w-full border p-3 rounded mb-4"></textarea>
                <button onclick="showPay()" class="bg-meesho text-white w-full py-3 rounded-lg font-bold">PLACE ORDER (PREPAID)</button>
            </div>

            <div id="pay-step" class="hidden text-center">
                <h3 class="font-bold mb-1">Pay & Confirm</h3>
                <p class="text-xs text-red-500 font-bold mb-4 italic">Free Delivery Active - No COD</p>
                
                <div class="qr-container mb-6">
                    <p class="text-[10px] font-bold text-gray-400 mb-2">SCAN TO PAY (FOR COMPUTER)</p>
                    <img id="qr-display" src="" class="mx-auto w-48 h-48 border-2 border-white">
                </div>

                <p class="text-[10px] font-bold text-gray-400 mb-2">OR PAY DIRECTLY (FOR MOBILE)</p>
                <div class="grid grid-cols-2 gap-3">
                    <a id="upilink1" href="#" class="border p-3 rounded-lg flex flex-col items-center">
                        <img src="https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/phonepe-logo-icon.png" class="h-6 mb-1">
                        <span class="text-[10px] font-bold">PhonePe</span>
                    </a>
                    <a id="upilink2" href="#" class="border p-3 rounded-lg flex flex-col items-center">
                        <img src="https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/google-pay-icon.png" class="h-6 mb-1">
                        <span class="text-[10px] font-bold">G-Pay</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script>
        let products = JSON.parse(localStorage.getItem('myProducts')) || [
            {n:"Mens Running Shoes (White)", p:299, i:"https://m.media-amazon.com/images/I/713vU1A-fDL._AC_UL400_.jpg"},
            {n:"Matte Lipstick Box", p:149, i:"https://m.media-amazon.com/images/I/51p83D-U4hL._AC_UL400_.jpg"},
            {n:"32 Inch Smart TV", p:499, i:"https://m.media-amazon.com/images/I/71LJJ67SslL._SL1500_.jpg"}
        ];

        function render() {
            const grid = document.getElementById('main-grid');
            grid.innerHTML = '';
            products.forEach(p => {
                grid.innerHTML += \`
                <div class="bg-white border p-2 rounded-lg" onclick="openOrder(\${p.p})">
                    <img src="\${p.i}" class="w-full h-40 object-contain">
                    <p class="text-xs text-gray-500 mt-2 truncate">\${p.n}</p>
                    <p class="font-bold text-lg">₹\${p.p}</p>
                    <span class="text-[10px] bg-green-100 text-green-700 px-2 py-0.5 rounded-full font-bold">Free Delivery</span>
                </div>\`;
            });
        }

        function addProduct() {
            const n = document.getElementById('p-name').value;
            const p = document.getElementById('p-price').value;
            const i = document.getElementById('p-img').value;
            if(n && p && i) {
                products.unshift({n, p: parseInt(p), i});
                localStorage.setItem('myProducts', JSON.stringify(products));
                render();
                document.getElementById('admin-panel').style.display = 'none';
            }
        }

        let price = 0;
        function openOrder(amt) { price = amt; document.getElementById('modal').style.display = 'flex'; }
        function closeModal() { document.getElementById('modal').style.display = 'none'; }

        function showPay() {
            if(!document.getElementById('c-name').value) return alert("Details Bharo!");
            document.getElementById('addr-step').classList.add('hidden');
            document.getElementById('pay-step').classList.remove('hidden');
            
            // Yahan APNA UPI ID Dale
surge . meesho-final-store.surge.sh
ls

cd ~/meesho-final && cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Meesho - Best Quality, Lowest Prices</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body { background-color: #f8f9fa; font-family: -apple-system, sans-serif; }
        .meesho-pink { color: #f43397; }
        .bg-meesho { background-color: #f43397; }
        .nav-active { color: #f43397; border-bottom: 2px solid #f43397; }
        .bottom-nav { position: fixed; bottom: 0; width: 100%; background: white; display: flex; justify-content: space-around; padding: 10px 0; border-top: 1px solid #ddd; z-index: 1000; }
        .n-item { text-align: center; color: #666; font-size: 11px; }
        #modal { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.9); z-index: 2000; overflow-y: auto; }
    </style>
</head>
<body class="pb-20">
    <div class="bg-white sticky top-0 z-[1000] border-b shadow-xs">
        <div class="flex items-center justify-between px-4 py-3">
            <h1 class="text-2xl font-black meesho-pink italic">meesho</h1>
            <div class="flex gap-4 text-gray-500 text-lg">
                <i class="fa-regular fa-bell"></i>
                <i class="fa-regular fa-heart"></i>
                <i class="fa-solid fa-cart-shopping"></i>
            </div>
        </div>
        <div class="px-4 pb-2">
            <div class="flex items-center bg-gray-50 border border-gray-200 rounded-md px-3 py-2">
                <i class="fa-solid fa-magnifying-glass text-gray-400 mr-2 text-sm"></i>
                <input type="text" placeholder="Search by Product, Brand and more" class="bg-transparent outline-none text-sm w-full">
            </div>
        </div>
        <div class="flex gap-6 overflow-x-auto px-4 py-2 text-sm font-medium text-gray-500 no-scrollbar">
            <span class="nav-active pb-1 whitespace-nowrap">All</span>
            <span class="whitespace-nowrap">Women</span>
            <span class="whitespace-nowrap">Men</span>
            <span class="whitespace-nowrap">Kids</span>
            <span class="whitespace-nowrap">Home</span>
            <span class="whitespace-nowrap">Electronics</span>
        </div>
    </div>
    <div class="p-2 grid grid-cols-2 gap-2" id="product-grid"></div>
    <div id="modal" class="flex items-center justify-center p-4">
        <div class="bg-white w-full max-w-sm rounded-xl p-5 relative">
            <button onclick="closeModal()" class="absolute top-2 right-4 text-3xl text-gray-400">&times;</button>
            <div id="addr-box">
                <h3 class="font-bold text-lg mb-4">Delivery Address</h3>
                <input type="text" id="name" placeholder="Full Name" class="w-full border p-3 rounded mb-3 outline-none">
                <input type="number" id="phone" placeholder="Mobile Number" class="w-full border p-3 rounded mb-3 outline-none">
                <textarea id="address" placeholder="House No, Area, Pincode" class="w-full border p-3 rounded mb-4 outline-none"></textarea>
                <p class="text-[11px] text-red-500 font-bold mb-4">* ONLINE PAYMENT ONLY (Free Delivery Applied)</p>
                <button onclick="showPay()" class="bg-meesho text-white w-full py-3 rounded-lg font-bold">PROCEED TO PAY</button>
            </div>
            <div id="pay-box" class="hidden text-center">
                <h3 class="font-bold mb-1">Pay & Confirm Order</h3>
                <p class="text-xs text-gray-500 mb-4">Amount to Pay: <span id="pay-amt" class="font-bold text-black text-lg"></span></p>
                <div class="border-2 border-pink-500 p-3 rounded-lg bg-pink-50 mb-4">
                    <p class="text-[10px] font-bold text-pink-600 mb-2">SCAN QR TO PAY</p>
                    <img id="qr-img" src="" class="mx-auto w-44 h-44 shadow-md border-2 border-white">
                </div>
                <p class="text-[10px] font-bold text-gray-400 mb-2">OR PAY VIA MOBILE APP</p>
                <div class="grid grid-cols-2 gap-3">
                    <a id="pp-link" href="#" class="border p-2 rounded-lg flex flex-col items-center">
                        <img src="https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/phonepe-logo-icon.png" class="h-6">
                        <span class="text-[10px] font-bold mt-1">PhonePe</span>
                    </a>
                    <a id="gp-link" href="#" class="border p-2 rounded-lg flex flex-col items-center">
                        <img src="https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/google-pay-icon.png" class="h-6">
                        <span class="text-[10px] font-bold mt-1">G-Pay</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom-nav">
        <div class="n-item active meesho-pink"><i class="fa-solid fa-house text-lg"></i><p>Home</p></div>
        <div class="n-item"><i class="fa-solid fa-list text-lg"></i><p>Category</p></div>
        <div class="n-item"><i class="fa-solid fa-shop text-lg"></i><p>Mall</p></div>
        <div class="n-item"><i class="fa-regular fa-user text-lg"></i><p>Account</p></div>
    </div>
    <script>
        const myProducts = [
            {n:"Mens Luxury Sports Shoes", p:299, i:"https://m.media-amazon.com/images/I/713vU1A-fDL._AC_UL400_.jpg"},
            {n:"Matte Lipstick Pack of 4", p:149, i:"https://m.media-amazon.com/images/I/51p83D-U4hL._AC_UL400_.jpg"},
            {n:"Samsung 32\" Smart TV", p:499, i:"https://m.media-amazon.com/images/I/71LJJ67SslL._SL1500_.jpg"},
            {n:"Silk Designer Saree", p:349, i:"https://m.media-amazon.com/images/I/9107S8L8qXL._UL1500_.jpg"},
            {n:"Voltas 1.5 Ton AC", p:450, i:"https://m.media-amazon.com/images/I/51I5QO26GmL._SL1000_.jpg"},
            {n:"Smart Watch Series 9", p:399, i:"https://m.media-amazon.com/images/I/61ZjlBOp+rL._AC_UL400_.jpg"},
            {n:"HP Gaming Laptop", p:499, i:"https://m.media-amazon.com/images/I/71fSOnUAnvL._SL1500_.jpg"},
            {n:"LG Double Door Refrigerator", p:480, i:"https://m.media-amazon.com/images/I/71atW4T-x6L._SL1500_.jpg"}
        ];
        const grid = document.getElementById('product-grid');
        myProducts.forEach(p => {
            grid.innerHTML += \`
                <div class="bg-white border p-2 rounded-lg" onclick="openOrder(\${p.p})">
                    <img src="\${p.i}" class="w-full h-40 object-contain">
                    <div class="p-2">
                        <p class="text-xs text-gray-500 truncate">\${p.n}</p>
                        <div class="flex items-center gap-2 mt-1">
                            <span class="text-lg font-bold">₹\${p.p}</span>
                            <span class="text-gray-400 line-through text-[10px]">₹\${p.p+800}</span>
                        </div>
                        <p class="text-green-600 text-[10px] font-bold mt-1"><i class="fa-solid fa-truck"></i> Free Delivery</p>
                    </div>
                </div>\`;
        });
        let price = 0;
        function openOrder(amt) { price = amt; document.getElementById('modal').style.display = 'flex'; }
        function closeModal() { document.getElementById('modal').style.display = 'none'; }
        function showPay() {
            if(!document.getElementById('name').value) return alert("Fill Details");
            document.getElementById('addr-box').classList.add('hidden');
            document.getElementById('pay-box').classList.remove('hidden');
            document.getElementById('pay-amt').innerText = "₹" + price;
            const myUpi = "YOUR_UPI_ID@okicici"; 
            const upiLink = "upi://pay?pa=" + myUpi + "&pn=MeeshoOrder&am=" + price + "&cu=INR";
            document.getElementById('qr-img').src = "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=" + encodeURIComponent(upiLink);
            document.getElementById('pp-link').href = upiLink;
            document.getElementById('gp-link').href = upiLink;
        }
    </script>
</body>
</html>
EOF

sahilzankhra06@okhdfcbank
sed -i 's/YOUR_UPI_ID@okicici/sahilzankhra06@okhdfcbank/g' index.html && surge . meesho-premium-store.surge.sh
cd ~/meesho-final && sed -i 's/YOUR_UPI_ID@okicici/sahilzankhra06@okhdfcbank/g' index.html && surge . meesho-market-india.surge.sh
cd ~/meesho-final && cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Meesho - Real Order System</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-database.js"></script>
    <style>
        body { background-color: #f8f9fa; font-family: sans-serif; }
        .meesho-pink { color: #f43397; }
        .bg-meesho { background-color: #f43397; }
        .bottom-nav { position: fixed; bottom: 0; width: 100%; background: white; display: flex; justify-content: space-around; padding: 10px 0; border-top: 1px solid #ddd; z-index: 1000; }
        #modal { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.9); z-index: 2000; overflow-y: auto; }
    </style>
</head>
<body class="pb-20">

    <div class="bg-white sticky top-0 z-[1000] border-b p-3 flex justify-between items-center">
        <h1 class="text-2xl font-black meesho-pink italic">meesho</h1>
        <i class="fa-solid fa-cart-shopping text-gray-500"></i>
    </div>

    <div class="p-2 grid grid-cols-2 gap-2" id="grid"></div>

    <div id="modal" class="flex items-center justify-center p-4">
        <div class="bg-white w-full max-w-sm rounded-xl p-5 relative shadow-2xl">
            <button onclick="closeModal()" class="absolute top-2 right-4 text-3xl text-gray-400">&times;</button>
            
            <div id="addr-box">
                <h3 class="font-bold text-lg mb-4 text-center">Delivery Details</h3>
                <input type="text" id="custName" placeholder="Customer Name" class="w-full border p-3 rounded mb-3 outline-none focus:border-pink-500">
                <input type="number" id="custPhone" placeholder="Mobile Number" class="w-full border p-3 rounded mb-3 outline-none focus:border-pink-500">
                <textarea id="custAddr" placeholder="Full Address with Pincode" class="w-full border p-3 rounded mb-4 outline-none focus:border-pink-500"></textarea>
                <button onclick="saveOrder()" class="bg-meesho text-white w-full py-3 rounded-lg font-bold">CONFIRM & PAY</button>
            </div>

            <div id="pay-box" class="hidden text-center">
                <h3 class="font-bold mb-4">Scan & Pay Now</h3>
                <div class="border-2 border-pink-500 p-3 rounded-lg bg-pink-50 mb-4">
                    <img id="qr-img" src="" class="mx-auto w-48 h-48 shadow-md">
                </div>
                <p class="text-xs text-gray-500">Paisa direct Sahil Bhai ko jayega</p>
                <button onclick="location.reload()" class="mt-4 text-pink-600 font-bold underline">Go Back to Home</button>
            </div>
        </div>
    </div>

    <div class="bottom-nav text-gray-400">
        <div class="text-center meesho-pink"><i class="fa-solid fa-house"></i><p class="text-[10px]">Home</p></div>
        <div class="text-center" onclick="window.open('https://console.firebase.google.com/')"><i class="fa-solid fa-user-lock"></i><p class="text-[10px]">Admin</p></div>
    </div>

    <script>
        // --- STEP 1: DATABASE SETUP (FREE) ---
        // Bhai, Firebase par jaakar "Realtime Database" create karo aur config yahan dalo
        const firebaseConfig = {
            databaseURL: "https://PROJECT_NAME.firebaseio.com/" 
        };
        firebase.initializeApp(firebaseConfig);
        const database = firebase.database();

        // --- PRODUCTS ---
        const products = [
            {n:"White Sneakers", p:299, i:"https://m.media-amazon.com/images/I/713vU1A-fDL._AC_UL400_.jpg"},
            {n:"Pink Designer Saree", p:349, i:"https://m.media-amazon.com/images/I/9107S8L8qXL._UL1500_.jpg"}
        ];

        const grid = document.getElementById('grid');
        products.forEach(p => {
            grid.innerHTML += \`
                <div class="bg-white border p-2 rounded-lg" onclick="openOrder(\${p.p}, '\${p.n}')">
                    <img src="\${p.i}" class="w-full h-40 object-contain">
                    <p class="text-xs mt-2 truncate">\${p.n}</p>
                    <p class="font-bold text-lg">₹\${p.p}</p>
                    <p class="text-green-600 text-[10px]">Free Delivery</p>
                </div>\`;
        });

        let selectedPrice = 0;
        let selectedName = "";
        function openOrder(amt, name) { selectedPrice = amt; selectedName = name; document.getElementById('modal').style.display = 'flex'; }
        function closeModal() { document.getElementById('modal').style.display = 'none'; }

        // --- ORDER SAVE SYSTEM ---
        function saveOrder() {
            const name = document.getElementById('custName').value;
            const phone = document.getElementById('custPhone').value;
            const addr = document.getElementById('custAddr').value;

            if(!name || !phone || !addr) return alert("Bhai, saari details bharo!");

            // Database mein data bhej rahe hain
            const orderId = Date.now();
            database.ref('orders/' + orderId).set({
                customer: name,
                mobile: phone,
                address: addr,
                product: selectedName,
                price: selectedPrice,
                status: "Pending Payment"
            });

            showPaymentScreen();
        }

        function showPaymentScreen() {
            document.getElementById('addr-box').classList.add('hidden');
            document.getElementById('pay-box').classList.remove('hidden');
            const myUpi = "sahilzankhra06@okhdfcbank"; 
            const upiLink = "upi://pay?pa=" + myUpi + "&pn=MeeshoOrder&am=" + selectedPrice + "&cu=INR";
            document.getElementById('qr-img').src = "https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=" + encodeURIComponent(upiLink);
        }
    </script>
</body>
</html>
EOF

surge . meesho-asli-system.surge.sh
cd ~/meesho-final && cat <<EOF > index.html
<!DOCTYPE html>
<html lang="hi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Meesho - Online Shopping</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body { background-color: #f8f9fa; font-family: -apple-system, sans-serif; }
        .meesho-pink { color: #f43397; }
        .bg-meesho { background-color: #f43397; }
        .border-meesho { border-color: #f43397; }
        #modal { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.8); z-index: 9999; }
        .no-scrollbar::-webkit-scrollbar { display: none; }
    </style>
</head>
<body class="pb-20">

    <div class="bg-white sticky top-0 z-[1000] border-b">
        <div class="flex items-center justify-between px-4 py-3">
            <h1 class="text-2xl font-black meesho-pink italic">meesho</h1>
            <div class="flex gap-5 text-gray-500 text-xl">
                <i class="fa-regular fa-bell"></i>
                <i class="fa-regular fa-heart"></i>
                <i class="fa-solid fa-cart-shopping"></i>
            </div>
        </div>
        <div class="px-4 pb-3">
            <div class="flex items-center bg-white border border-gray-300 rounded-md px-3 py-2 shadow-sm">
                <i class="fa-solid fa-magnifying-glass text-gray-400 mr-2 text-sm"></i>
                <input type="text" placeholder="Try Saree, Kurti or Search by ID" class="outline-none text-sm w-full">
            </div>
        </div>
    </div>

    <div class="bg-white flex gap-6 overflow-x-auto px-4 py-3 text-sm font-semibold text-gray-500 no-scrollbar border-b">
        <span class="text-pink-600 border-b-2 border-pink-600 pb-1">All</span>
        <span class="whitespace-nowrap">Women Ethnic</span>
        <span class="whitespace-nowrap">Men</span>
        <span class="whitespace-nowrap">Kids</span>
        <span class="whitespace-nowrap">Kitchen</span>
    </div>

    <div class="p-2 grid grid-cols-2 gap-2" id="grid">
        </div>

    <div id="modal" class="flex items-center justify-center p-4">
        <div class="bg-white w-full max-w-sm rounded-lg overflow-hidden shadow-2xl">
            <div class="p-4 border-b flex justify-between items-center">
                <h3 class="font-bold text-gray-700">Order Summary</h3>
                <button onclick="closeModal()" class="text-2xl text-gray-400">&times;</button>
            </div>
            
            <div id="addr-screen" class="p-5">
                <p class="text-xs text-gray-400 mb-4 uppercase font-bold">Shipping Address</p>
                <input type="text" id="c-name" placeholder="Name" class="w-full border-b py-2 mb-4 outline-none focus:border-pink-500">
                <input type="number" id="c-phone" placeholder="Phone Number" class="w-full border-b py-2 mb-4 outline-none focus:border-pink-500">
                <textarea id="c-addr" placeholder="Full Address" class="w-full border-b py-2 mb-6 outline-none focus:border-pink-500"></textarea>
                <button onclick="goPay()" class="bg-meesho text-white w-full py-3 rounded font-bold shadow-lg">CONTINUE</button>
            </div>

            <div id="pay-screen" class="p-5 hidden text-center">
                <p class="text-pink-600 font-bold mb-2">Total: ₹<span id="final-price"></span></p>
                <div class="bg-pink-50 border-2 border-dashed border-pink-300 p-4 rounded mb-6">
                    <p class="text-[10px] font-bold text-pink-500 mb-2 uppercase">Scan to Pay via UPI</p>
                    <img id="qr-code" src="" class="mx-auto w-48 h-48">
                </div>
                <div class="grid grid-cols-2 gap-2">
                    <a id="pp-btn" href="#" class="border p-3 rounded flex flex-col items-center">
                        <img src="https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/phonepe-logo-icon.png" class="h-6 mb-1">
                        <span class="text-[10px] font-bold">PhonePe</span>
                    </a>
                    <a id="gp-btn" href="#" class="border p-3 rounded flex flex-col items-center">
                        <img src="https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/google-pay-icon.png" class="h-6 mb-1">
                        <span class="text-[10px] font-bold">Google Pay</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="fixed bottom-0 w-full bg-white border-t flex justify-around py-2 shadow-lg">
        <div class="flex flex-col items-center text-pink-600"><i class="fa-solid fa-house text-lg"></i><span class="text-[10px]">Home</span></div>
        <div class="flex flex-col items-center text-gray-400"><i class="fa-solid fa-border-all text-lg"></i><span class="text-[10px]">Categories</span></div>
        <div class="flex flex-col items-center text-gray-400"><i class="fa-solid fa-shop text-lg"></i><span class="text-[10px]">Mall</span></div>
        <div class="flex flex-col items-center text-gray-400"><i class="fa-regular fa-user text-lg"></i><span class="text-[10px]">Account</span></div>
    </div>

    <script>
        const products = [
            {n:"Premium Men Shoes", p:299, i:"https://m.media-amazon.com/images/I/713vU1A-fDL._AC_UL400_.jpg"},
            {n:"Silk Designer Saree", p:349, i:"https://m.media-amazon.com/images/I/9107S8L8qXL._UL1500_.jpg"},
            {n:"Matte Lipstick Set", p:149, i:"https://m.media-amazon.com/images/I/51p83D-U4hL._AC_UL400_.jpg"},
            {n:"Smart Watch S8", p:450, i:"https://m.media-amazon.com/images/I/61ZjlBOp+rL._AC_UL400_.jpg"}
        ];

        const grid = document.getElementById('grid');
        products.forEach(p => {
            grid.innerHTML += \`
                <div class="bg-white border rounded shadow-sm overflow-hidden" onclick="openCheckout(\${p.p})">
                    <img src="\${p.i}" class="w-full h-44 object-contain p-2">
                    <div class="p-2">
                        <p class="text-xs text-gray-500 truncate">\${p.n}</p>
                        <p class="text-lg font-bold mt-1">₹\${p.p}</p>
                        <span class="text-[10px] bg-gray-100 px-2 py-0.5 rounded-full text-gray-600 font-bold">Free Delivery</span>
                    </div>
                </div>\`;
        });

        let currentPrice = 0;
        function openCheckout(amt) { currentPrice = amt; document.getElementById('modal').style.display = 'flex'; }
        function closeModal() { document.getElementById('modal').style.display = 'none'; document.getElementById('addr-screen').classList.remove('hidden'); document.getElementById('pay-screen').classList.add('hidden'); }

        function goPay() {
            if(!document.getElementById('c-name').value) return alert("Please fill address!");
            document.getElementById('addr-screen').classList.add('hidden');
            document.getElementById('pay-screen').classList.remove('hidden');
            document.getElementById('final-price').innerText = currentPrice;

            const myUpi = "sahilzankhra06@okhdfcbank"; // Aapka original UPI
            const upiLink = "upi://pay?pa=" + myUpi + "&pn=MeeshoOrder&am=" + currentPrice + "&cu=INR";
            
            document.getElementById('qr-code').src = "https://api.qrserver.com/v1/create-qr-code/?size=250x250&data=" + encodeURIComponent(upiLink);
            document.getElementById('pp-btn').href = upiLink;
            document.getElementById('gp-btn').href = upiLink;
        }
    </script>
</body>
</html>
EOF

surge . meesho-official-look.surge.sh
surge logout
cd ~/meesho-final && surge . meesho-super-fast.surge.sh
mkdir meesho-clone && cd meesho-clone
mkdir assets && mkdir assets/images
nano index.html
python3 -m http.server 8080
rm index.html
cat <<EOF > index.html
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meesho Clone</title>
    <style>
        body { font-family: sans-serif; margin: 0; background: #f8f8f8; text-align: center; }
        header { background: #fff; padding: 15px; color: #f43397; font-size: 22px; font-weight: bold; border-bottom: 1px solid #ddd; }
        .product-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 10px; padding: 10px; }
        .card { background: #fff; border-radius: 8px; padding: 10px; border: 1px solid #eee; }
        .price { font-size: 18px; font-weight: bold; margin: 5px 0; }
        .btn { background: #f43397; color: white; border: none; width: 100%; padding: 10px; border-radius: 5px; cursor: pointer; }
        #payment { display:none; position: fixed; top: 10%; left: 5%; right: 5%; background: white; padding: 20px; border: 2px solid #f43397; box-shadow: 0 0 20px rgba(0,0,0,0.5); z-index: 100; }
    </style>
</head>
<body>
    <header>MEESHO CLONE</header>
    <div class="product-grid">
        <div class="card">
            <img src="https://via.placeholder.com/150" style="width:100%">
            <div class="price">₹499</div>
            <button class="btn" onclick="document.getElementById('payment').style.display='block'">Buy Now</button>
        </div>
        <div class="card">
            <img src="https://via.placeholder.com/150" style="width:100%">
            <div class="price">₹750</div>
            <button class="btn" onclick="document.getElementById('payment').style.display='block'">Buy Now</button>
        </div>
    </div>

    <div id="payment">
        <h3>Scan QR to Pay</h3>
        <p>Handmade & Apparel Store</p>
        <img src="assets/images/payment-qr.png" style="width:200px; border:1px solid #ccc;">
        <br><br>
        <button onclick="document.getElementById('payment').style.display='none'" style="background:#555; color:white; border:none; padding:10px;">Close</button>
    </div>
</body>
</html>
EOF

python3 -m http.server 8080
nano index.html
python3 -m http.server 8000
mkdir -p ~/meesho_store && cd ~/meesho_store
mkdir -p assets/images
cat << 'EOF' > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meesho Style Store</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 0; background-color: #f8f8f8; }
        header { background: #fff; padding: 15px; color: #f43397; font-size: 24px; font-weight: bold; text-align: center; border-bottom: 1px solid #ddd; position: sticky; top: 0; z-index: 100; }
        .product-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 12px; padding: 12px; }
        .card { background: #fff; border-radius: 12px; padding: 10px; box-shadow: 0 2px 4px rgba(0,0,0,0.05); text-align: left; border: 1px solid #eee; }
        .card img { width: 100%; border-radius: 8px; margin-bottom: 8px; }
        .title { font-size: 14px; color: #666; margin-bottom: 4px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }
        .price { font-size: 18px; font-weight: bold; color: #333; }
        .mrp { font-size: 12px; color: #888; text-decoration: line-through; margin-left: 5px; }
        .delivery { background: #f2f2f2; color: #555; font-size: 11px; padding: 3px 6px; border-radius: 4px; display: inline-block; margin-top: 8px; }
        .buy-btn { background: #f43397; color: white; border: none; width: 100%; padding: 12px; border-radius: 8px; margin-top: 12px; font-weight: bold; cursor: pointer; }
        #payment-modal { display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0,0,0,0.8); z-index: 1000; justify-content: center; align-items: center; }
        .modal-content { background: white; padding: 25px; border-radius: 15px; text-align: center; width: 85%; max-width: 400px; }
        .close-btn { background: #eee; border: none; padding: 10px 20px; border-radius: 5px; margin-top: 15px; cursor: pointer; }
    </style>
</head>
<body>
    <header>Meesho Clone</header>
    <div class="product-grid">
        <div class="card">
            <img src="https://via.placeholder.com/200" alt="Handmade">
            <div class="title">Handmade Designer Item</div>
            <div class="price">₹499 <span class="mrp">₹899</span></div>
            <div class="delivery">Free Delivery</div>
            <button class="buy-btn" onclick="openPayment()">Buy Now</button>
        </div>
        <div class="card">
            <img src="https://via.placeholder.com/200" alt="Apparel">
            <div class="title">Latest Apparel Design</div>
            <div class="price">₹750 <span class="mrp">₹1200</span></div>
            <div class="delivery">Free Delivery</div>
            <button class="buy-btn" onclick="openPayment()">Buy Now</button>
        </div>
    </div>
    <div id="payment-modal">
        <div class="modal-content">
            <h2 style="color:#f43397">Scan QR to Pay</h2>
            <p>Pay with Any UPI App (PhonePe, GPay, Paytm)</p>
            <img src="assets/images/payment-qr.png" alt="QR Code" style="width: 250px; border: 1px solid #ddd; border-radius: 10px;">
            <p style="font-size: 12px; color: #888; margin-top: 10px;">Screenshot share karne ki zaroorat nahi hai, payment confirm hote hi order process ho jayega.</p>
            <button class="close-btn" onclick="closePayment()">Go Back</button>
        </div>
    </div>
    <script>
        function openPayment() { document.getElementById('payment-modal').style.display = 'flex'; }
        function closePayment() { document.getElementById('payment-modal').style.display = 'none'; }
    </script>
</body>
</html>
EOF

cp ~/Downloads/*.png assets/images/payment-qr.png
python3 -m http.server 8000
fuser -k 8000/tcp
python3 -m http.server 9000
hostname -I
python3 -m http.server 8080 --bind 0.0.0.0
killall python3
python3 -m http.server 1234
python3 --version
mkdir telegram-bot
cd telegram-bot
nano bot.py
from telegram import Update, InlineKeyboardButton, InlineKeyboardMarkup
from telegram.ext import ApplicationBuilder, CommandHandler, CallbackQueryHandler, MessageHandler, filters, ContextTypes
async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
async def button(update: Update, context: ContextTypes.DEFAULT_TYPE):
async def handle_photo(update: Update, context: ContextTypes.DEFAULT_TYPE):
app = ApplicationBuilder().token("8684075597:AAGiiqwhCYcDKV0m2ddOBSc9LqcM1ET4PWI").build()
app.add_handler(CommandHandler("start", start))
app.add_handler(CallbackQueryHandler(button))
app.add_handler(MessageHandler(filters.PHOTO, handle_photo))
app.run_polling()
from telegram import Update, InlineKeyboardButton, InlineKeyboardMarkup
from telegram.ext import ApplicationBuilder, CommandHandler, CallbackQueryHandler, MessageHandler, filters, ContextTypes
async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
async def button(update: Update, context: ContextTypes.DEFAULT_TYPE):
async def handle_photo(update: Update, context: ContextTypes.DEFAULT_TYPE):
app = ApplicationBuilder().token("he8684075597:AAGiiqwhCYcDKV0m2ddOBSc9LqcM1ET4PWI").build()
app.add_handler(CommandHandler("start", start))
app.add_handler(CallbackQueryHandler(button))
app.add_handler(MessageHandler(filters.PHOTO, handle_photo))
app.run_polling() nano bot.py
from telegram import Update, InlineKeyboardButton, InlineKeyboardMarkup
from telegram.ext import ApplicationBuilder, CommandHandler, CallbackQueryHandler, MessageHandler, filters, ContextTypes
async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
async def button(update: Update, context: ContextTypes.DEFAULT_TYPE):
async def handle_photo(update: Update, context: ContextTypes.DEFAULT_TYPE):
app = ApplicationBuilder().token("he8684075597:AAGiiqwhCYcDKV0m2ddOBSc9LqcM1ET4PWI").build()
app.add_handler(CommandHandler("start", start))
app.add_handler(CallbackQueryHandler(button))
app.add_handler(MessageHandler(filters.PHOTO, handle_photo))
app.run_polling()
sudo apt update
sudo apt upgrade -y
sudo apt install python3-pip -y
pip3 install python-telegram-bot --break-system-packages
nano bot.py
nano mishubot.py
mkdir cute_car_store
cd cute_car_store
nano index.html
rm index.html
nano index.html
<html lang="hi">
<head>
</head>
<body>
<div class="card">
</div>
<script>
</script>
</body>
</html>
clear
nano index.html
rm index.html
nano index.html
rm index.html
nano index.html
<div style="text-align: left; margin-top: 20px;">
</div>
sh: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `('
-bash: syntax error near unexpected token `('
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
-bash: syntax error near unexpected token `newline'
khiraniteju1@penguin:~/cute_car_store$ 
clear
nano index.html
cat index.html
> index.html
nano index.html
cancel
kk
> index.html
nano index.html
> index.html
nano index.html
V
nano index.html
nano index.htm
nano index.html
grep "paytm.s19x4tu@pty" index.html
$ grep "paytm.s19x4tu@pty" index.html
khiraniteju1@penguin:~/cute_car_store$ 
$ grep "paytm.s19x4tu@pty" index.html
khiraniteju1@penguin:~/cute_car_store$ 
nano index.html
index.htm
index.html
ls
nano index.html
netlify deploy --prod
sudo npm install -g netlify-cli
nvm install 20
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 20
sudo npm install -g netlify-cli@12.0.0
netlify deploy --prod
netlify login
netlify deploy --prod
nano shreya_ai.py
nano shreya_ai.py
python3 shreya_ai.py
nano shreya_ai.py
python3 shreya_ai.py
import logging
from telegram import Update
from telegram.ext import Application, MessageHandler, filters, ContextTypes
TOKEN = "8707304999:AAG5ri9VfBLEic1HTyMW4khjfVmLdOpr-Mw"
async def get_video_id(update: Update, context: ContextTypes.DEFAULT_TYPE):
def main():
nano shreya_ai.py
python3 shreya_ai.py
nano shreya_ai.py
python3 shreya_ai.py
nano shreya_ai.py
python3 shreya_ai.py
nano shreya_ai.py
python3 shreya_ai.py
nano shreya_ai.py
python3 shreya_ai.py
nano shreya_ai.py
