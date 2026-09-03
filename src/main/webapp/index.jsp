<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · modern e‑commerce</title>
  <!-- Google Fonts & Font Awesome -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: #fafcff;
      color: #0a2540;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    :root {
      --primary: #0a2540;
      --accent: #00b4d8;
      --surface: #f0f6fe;
      --muted: #5e6f8d;
      --card: #ffffff;
      --radius: 16px;
      --shadow: 0 12px 30px rgba(10, 37, 64, 0.06);
      --transition: 0.2s ease;
    }
    a { text-decoration: none; color: inherit; }
    img { display: block; max-width: 100%; }
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* header */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255,255,255,0.92);
      backdrop-filter: blur(6px);
      border-bottom: 1px solid rgba(10,37,64,0.04);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 6px;
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 22px;
      letter-spacing: -0.3px;
    }
    .brand .accent { color: var(--accent); }
    .nav-row {
      display: flex;
      align-items: center;
      gap: 20px;
    }
    .nav-links {
      display: flex;
      gap: 6px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      transition: var(--transition);
    }
    .nav-links a:hover {
      background: var(--surface);
      color: var(--accent);
    }
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 40px;
      padding: 6px 14px;
      gap: 8px;
      min-width: 200px;
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      font-size: 0.9rem;
      width: 100%;
      padding: 6px 0;
    }
    .search-wrap button {
      background: transparent;
      border: 0;
      cursor: pointer;
      color: var(--primary);
      font-size: 1rem;
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .cart-btn {
      position: relative;
      display: flex;
      align-items: center;
      gap: 6px;
      background: var(--surface);
      padding: 8px 14px 8px 12px;
      border-radius: 40px;
      font-weight: 600;
      transition: var(--transition);
    }
    .cart-btn:hover { background: #e2ebf7; }
    .cart-count {
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      margin-left: 2px;
    }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.5rem;
      cursor: pointer;
      color: var(--primary);
    }
    .mobile-menu {
      display: none;
      background: white;
      border-top: 1px solid rgba(10,37,64,0.04);
      padding: 16px 0;
    }
    .mobile-menu a {
      display: block;
      padding: 10px 0;
      font-weight: 500;
      border-bottom: 1px solid rgba(0,0,0,0.02);
    }

    /* hero */
    .hero {
      background: linear-gradient(135deg, #0a2540 0%, #1b3b5a 100%);
      color: white;
      padding: 64px 24px;
      border-radius: 0 0 40px 40px;
      margin-bottom: 16px;
      text-align: center;
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: clamp(2rem, 6vw, 3.4rem);
      margin-bottom: 16px;
      letter-spacing: -0.02em;
    }
    .hero p {
      max-width: 640px;
      margin: 0 auto 28px;
      opacity: 0.85;
      font-size: 1.1rem;
    }
    .btn-group {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 12px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
    }
    .btn-primary {
      background: var(--accent);
      color: #042233;
    }
    .btn-primary:hover { background: #00c8f0; transform: scale(1.02); }
    .btn-outline {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.25);
      color: white;
    }
    .btn-outline:hover { background: rgba(255,255,255,0.08); }

    /* sections */
    .section {
      padding: 40px 0;
    }
    .section-header {
      text-align: center;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.9rem;
    }
    .section-header p { color: var(--muted); }

    /* categories */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: var(--card);
      padding: 20px 12px;
      border-radius: var(--radius);
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 20px 30px rgba(0,180,216,0.08);
    }
    .cat-card .icon {
      font-size: 2rem;
      color: var(--accent);
      margin-bottom: 6px;
    }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover { transform: translateY(-6px); box-shadow: 0 20px 40px rgba(10,37,64,0.08); }
    .product-card img {
      height: 200px;
      object-fit: cover;
      width: 100%;
    }
    .product-body {
      padding: 14px 16px 10px;
      flex: 1;
    }
    .product-body h5 {
      font-size: 1rem;
      margin-bottom: 4px;
    }
    .product-meta {
      font-size: 0.8rem;
      color: var(--muted);
      text-transform: capitalize;
      margin-bottom: 8px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .price {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .old-price {
      text-decoration: line-through;
      color: var(--muted);
      font-size: 0.9rem;
    }
    .rating {
      color: #f9a825;
      font-size: 0.85rem;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .product-footer {
      padding: 8px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
    }
    .add-btn:hover { background: #1b3b5a; }
    .wish-btn {
      background: var(--surface);
      border: 0;
      width: 44px;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
    }
    .wish-btn:hover { background: #dce6f5; }

    /* deal block */
    .deal-block {
      display: flex;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      flex-wrap: wrap;
    }
    .deal-block img {
      width: 100%;
      max-width: 400px;
      object-fit: cover;
      height: 300px;
    }
    .deal-content {
      padding: 28px 32px;
      flex: 1;
    }
    .timer {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 12px;
      border-radius: 12px;
      min-width: 60px;
      text-align: center;
    }
    .time-box span { display: block; font-weight: 700; font-size: 1.4rem; }
    .time-box small { font-size: 0.7rem; opacity: 0.7; }

    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 8px 4px 20px;
    }
    .testimonial-card {
      min-width: 280px;
      background: white;
      padding: 20px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
    }
    .testimonial-card .stars { color: #f9a825; letter-spacing: 2px; }

    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      color: white;
      padding: 40px 28px;
      border-radius: var(--radius);
      text-align: center;
    }
    .newsletter-box input {
      padding: 12px 18px;
      border-radius: 60px;
      border: 0;
      min-width: 240px;
      font-size: 1rem;
      margin-right: 8px;
    }
    .newsletter-box .btn-primary { background: var(--accent); color: #042233; }

    /* footer */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid rgba(10,37,64,0.04);
      color: var(--muted);
      font-size: 0.9rem;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 30px;
    }
    .footer-social a {
      margin-right: 12px;
      font-size: 1.2rem;
    }

    /* responsive */
    @media (max-width: 900px) {
      .nav-links { display: none; }
      .mobile-toggle { display: inline-block; }
      .mobile-menu.open { display: block; }
      .search-wrap { min-width: 140px; }
      .deal-block img { max-width: 100%; height: 200px; }
    }
    @media (max-width: 600px) {
      .header-inner { flex-wrap: wrap; }
      .search-wrap { order: 10; width: 100%; }
      .product-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 420px) {
      .product-grid { grid-template-columns: 1fr; }
    }
    .badge {
      background: #ff4757;
      color: white;
      padding: 4px 10px;
      border-radius: 40px;
      font-size: 0.7rem;
      font-weight: 700;
      display: inline-block;
    }
    .badge-success { background: #2ecc71; }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
        <a href="#" class="brand">Nexus<span class="accent">Shop</span></a>
      </div>

      <div class="nav-row">
        <ul class="nav-links">
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        </ul>
        <div class="search-wrap">
          <input type="text" id="searchInput" placeholder="Search..." aria-label="Search">
          <button id="searchBtn"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <a href="#" aria-label="Wishlist"><i class="far fa-heart" style="font-size:1.2rem;"></i></a>
          <a href="#" class="cart-btn" id="cartBtn">
            <i class="fas fa-shopping-cart"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div class="mobile-menu" id="mobileMenu">
      <div class="container">
        <a href="#">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Trending</a>
        <a href="#deals">Deals</a>
        <a href="#">Wishlist</a>
      </div>
    </div>
  </header>

  <main>
    <!-- hero -->
    <section class="hero">
      <div class="container">
        <h1>Discover premium <br>essentials</h1>
        <p>From tech to style — curated picks with free delivery on first order.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-outline" id="exploreDealsBtn">Explore deals</button>
        </div>
      </div>
    </section>

    <!-- categories -->
    <section class="section container" id="categories">
      <div class="section-header">
        <h2>Shop by category</h2>
        <p>Find what you love, fast</p>
      </div>
      <div class="cat-grid" id="categoriesGrid"></div>
    </section>

    <!-- products -->
    <section class="section container" id="products">
      <div class="section-header">
        <h2>Trending now</h2>
        <p>Most popular this week</p>
      </div>
      <div class="product-grid" id="productsGrid"></div>
    </section>

    <!-- deal -->
    <section class="section container" id="deals">
      <div class="section-header">
        <h2>⚡ Flash sale</h2>
        <p>Limited time only</p>
      </div>
      <div class="deal-block">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air">
        <div class="deal-content">
          <h3>MacBook Air M2</h3>
          <p class="muted">Lightning fast, all‑day battery.</p>
          <div class="timer" id="dealTimer">
            <div class="time-box"><span id="dealDays">0</span><small>Days</small></div>
            <div class="time-box"><span id="dealHours">00</span><small>Hrs</small></div>
            <div class="time-box"><span id="dealMinutes">00</span><small>Min</small></div>
            <div class="time-box"><span id="dealSeconds">00</span><small>Sec</small></div>
          </div>
          <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
            <span class="price" style="font-size:1.8rem;">$999</span>
            <span class="old-price">$1,199</span>
            <span class="badge">−17%</span>
          </div>
          <p style="margin:10px 0 16px;"><strong>12</strong> left at this price</p>
          <button class="btn btn-primary" id="buyDealBtn"><i class="fas fa-bolt"></i> Buy now</button>
        </div>
      </div>
    </section>

    <!-- testimonials -->
    <section class="section container">
      <div class="section-header">
        <h2>❤️ Customer love</h2>
        <p>Real reviews</p>
      </div>
      <div class="testimonial-scroll">
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <p style="margin:8px 0;">"Super fast delivery, product was perfect."</p>
          <div style="display:flex;align-items:center;gap:10px;">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&h=60&q=80" style="border-radius:50%;width:40px;height:40px;object-fit:cover;" alt="avatar">
            <div><strong>Ava</strong> <span class="muted" style="font-size:0.8rem;">Verified</span></div>
          </div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★☆</div>
          <p style="margin:8px 0;">"Great quality, will order again."</p>
          <div style="display:flex;align-items:center;gap:10px;">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&h=60&q=80" style="border-radius:50%;width:40px;height:40px;object-fit:cover;" alt="avatar">
            <div><strong>Michael</strong> <span class="muted" style="font-size:0.8rem;">Frequent</span></div>
          </div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <p style="margin:8px 0;">"The best shopping experience online."</p>
          <div style="display:flex;align-items:center;gap:10px;">
            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=60&h=60&q=80" style="border-radius:50%;width:40px;height:40px;object-fit:cover;" alt="avatar">
            <div><strong>James</strong> <span class="muted" style="font-size:0.8rem;">Top buyer</span></div>
          </div>
        </div>
      </div>
    </section>

    <!-- newsletter -->
    <section class="section container">
      <div class="newsletter-box">
        <h3 style="font-size:1.6rem;">Get the best deals</h3>
        <p style="margin-bottom:16px;">Subscribe for exclusive offers</p>
        <form id="newsletterForm" style="display:flex;flex-wrap:wrap;justify-content:center;gap:10px;">
          <input type="email" id="newsletterEmail" placeholder="your@email.com" required>
          <button class="btn btn-primary" type="submit">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:12px;display:none;font-weight:500;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <div class="footer-grid">
        <div>
          <strong style="font-size:1.2rem;color:var(--primary);">NexusShop</strong>
          <p style="margin-top:6px;max-width:260px;">Modern e‑commerce demo — crafted with care.</p>
          <div class="footer-social">
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
          </div>
        </div>
        <div style="display:flex;gap:40px;flex-wrap:wrap;">
          <div><strong>Company</strong><br><span class="muted">About<br>Careers</span></div>
          <div><strong>Support</strong><br><span class="muted">Help<br>Returns</span></div>
        </div>
      </div>
      <div style="text-align:center;margin-top:28px;font-size:0.8rem;color:var(--muted);">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </div>
  </footer>

  <script>
    (function() {
      // ----- DATA -----
      const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
      ];

      const PRODUCTS = [
        { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
        { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
        { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
        { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
        { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
        { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
      ];

      // ----- state -----
      let cartCount = 0;
      const cartCountEl = document.getElementById('cartCount');
      const categoriesGrid = document.getElementById('categoriesGrid');
      const productsGrid = document.getElementById('productsGrid');
      const searchInput = document.getElementById('searchInput');
      const searchBtn = document.getElementById('searchBtn');

      // ----- helpers -----
      function escapeHtml(text) {
        return String(text).replace(/[&<>"']/g, s => ({ '&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;' }[s]));
      }

      function updateCart() {
        cartCountEl.textContent = cartCount;
      }

      function addToCart(id) {
        const p = PRODUCTS.find(x => x.id === id);
        if (!p) return;
        cartCount++;
        updateCart();
        const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
        if (btn) {
          const orig = btn.innerHTML;
          btn.innerHTML = '✓ Added';
          btn.disabled = true;
          setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1000);
        }
      }

      // ----- render -----
      function renderCategories() {
        categoriesGrid.innerHTML = '';
        CATEGORIES.forEach(cat => {
          const card = document.createElement('div');
          card.className = 'cat-card';
          card.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4>`;
          card.addEventListener('click', () => {
            searchInput.value = cat.name;
            filterProducts(cat.name);
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
          });
          categoriesGrid.appendChild(card);
        });
      }

      function renderProducts(list) {
        productsGrid.innerHTML = '';
        list.forEach(p => {
          const card = document.createElement('div');
          card.className = 'product-card';
          const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
          card.innerHTML = `
            <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
            <div class="product-body">
              <h5>${escapeHtml(p.title)}</h5>
              <div class="product-meta">${p.category}</div>
              <div class="price-row">
                <span class="price">$${p.price.toLocaleString()}</span>
                ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                <span class="rating"><i class="fas fa-star"></i> ${p.rating} (${p.reviews})</span>
              </div>
            </div>
            <div class="product-footer">
              <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
              <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
            </div>
          `;
          productsGrid.appendChild(card);
        });
        // attach add listeners
        productsGrid.querySelectorAll('.add-btn').forEach(btn => {
          btn.addEventListener('click', (e) => {
            e.stopPropagation();
            addToCart(Number(btn.dataset.id));
          });
        });
      }

      function filterProducts(query) {
        const q = String(query).trim().toLowerCase();
        if (!q) { renderProducts(PRODUCTS); return; }
        const filtered = PRODUCTS.filter(p => 
          p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)
        );
        renderProducts(filtered);
      }

      // ----- search -----
      searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
      searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

      // ----- mobile menu -----
      const mobileToggle = document.getElementById('mobileToggle');
      const mobileMenu = document.getElementById('mobileMenu');
      mobileToggle.addEventListener('click', () => mobileMenu.classList.toggle('open'));

      // ----- deal timer -----
      (function setupTimer() {
        const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
        function tick() {
          const diff = target - new Date();
          if (diff <= 0) return;
          const days = Math.floor(diff / (86400 * 1000));
          const hours = Math.floor((diff % (86400 * 1000)) / (3600 * 1000));
          const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
          const secs = Math.floor((diff % (60 * 1000)) / 1000);
          document.getElementById('dealDays').textContent = days;
          document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
          document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
          document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
        }
        tick();
        setInterval(tick, 1000);
      })();

      // ----- newsletter -----
      document.getElementById('newsletterForm').addEventListener('submit', function(e) {
        e.preventDefault();
        const email = document.getElementById('newsletterEmail').value.trim();
        const msg = document.getElementById('newsletterMsg');
        if (!email || !email.includes('@')) {
          msg.style.display = 'block';
          msg.textContent = 'Please enter a valid email.';
          msg.style.color = '#f8c6c6';
          return;
        }
        msg.style.display = 'block';
        msg.textContent = '✅ Thanks for subscribing!';
        msg.style.color = '#b8e6b8';
        document.getElementById('newsletterEmail').value = '';
        setTimeout(() => msg.style.display = 'none', 3000);
      });

      // ----- hero buttons -----
      document.getElementById('shopNowBtn').addEventListener('click', () => {
        document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
      });
      document.getElementById('exploreDealsBtn').addEventListener('click', () => {
        document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
      });
      document.getElementById('buyDealBtn').addEventListener('click', () => {
        cartCount += 1;
        updateCart();
        alert('Deal added to cart!');
      });

      // ----- init -----
      renderCategories();
      renderProducts(PRODUCTS);
      updateCart();
      document.getElementById('year').textContent = new Date().getFullYear();

      // close mobile menu on link click
      document.querySelectorAll('.mobile-menu a').forEach(link => {
        link.addEventListener('click', () => mobileMenu.classList.remove('open'));
      });

    })();
  </script>
</body>
</html>
