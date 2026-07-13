<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
  <title>NexusShop · Modern Store</title>
  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Plus+Jakarta+Sans:wght@500;600;700&display=swap" rel="stylesheet" />
  <!-- Font Awesome 6 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #fafbfc;
      --surface: #ffffff;
      --primary: #1e293b;
      --soft-text: #475569;
      --accent: #7c3aed;
      --accent-soft: #ede9fe;
      --border-light: #e9eef2;
      --shadow-card: 0 20px 35px -8px rgba(0, 0, 0, 0.04), 0 10px 15px -6px rgba(0, 0, 0, 0.02);
      --radius-lg: 28px;
      --radius-md: 18px;
      --radius-sm: 14px;
      --transition: 0.25s ease;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
      scroll-behavior: smooth;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* header */
    .header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255,255,255,0.8);
      backdrop-filter: blur(18px);
      -webkit-backdrop-filter: blur(18px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      padding: 14px 0;
    }

    .header .container {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .logo {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 700;
      font-size: 1.8rem;
      letter-spacing: -0.5px;
      color: #0f172a;
    }
    .logo span {
      color: var(--accent);
    }

    .nav-links {
      display: flex;
      gap: 6px;
      list-style: none;
    }
    .nav-links a {
      padding: 10px 16px;
      border-radius: 40px;
      font-weight: 500;
      color: #334155;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: background 0.2s, color 0.2s;
      font-size: 0.95rem;
    }
    .nav-links a:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: #f1f5f9;
      border-radius: 50px;
      padding: 8px 16px;
      gap: 10px;
      transition: 0.2s;
    }
    .search-wrap i {
      color: #64748b;
      font-size: 1rem;
    }
    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      font-size: 0.95rem;
      width: 180px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.3rem;
      color: #334155;
      cursor: pointer;
      position: relative;
      padding: 6px;
      transition: color 0.2s;
    }
    .icon-btn:hover {
      color: var(--accent);
    }
    .cart-badge {
      position: absolute;
      top: -2px;
      right: -6px;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .mobile-menu-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 1.6rem;
      color: #1e293b;
    }

    /* hero */
    .hero {
      background: linear-gradient(103deg, #f5f3ff 0%, #eef2ff 100%);
      border-radius: 48px;
      margin: 24px auto 32px;
      padding: 48px 48px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 28px;
    }
    .hero-text h1 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 2.9rem;
      font-weight: 700;
      line-height: 1.2;
      color: #0f172a;
    }
    .hero-text p {
      font-size: 1.2rem;
      color: #475569;
      margin: 16px 0 24px;
      max-width: 500px;
    }
    .btn-group {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 12px 26px;
      border-radius: 40px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      font-size: 0.95rem;
      transition: 0.2s;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 10px 18px -8px rgba(124,58,237,0.3);
    }
    .btn-primary:hover {
      background: #6d28d9;
    }
    .btn-outline {
      background: white;
      border: 1px solid #e2e8f0;
      color: #1e293b;
    }
    .hero-image i {
      font-size: 8rem;
      color: #7c3aed;
      opacity: 0.8;
    }

    /* sections */
    .section-title {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 2rem;
      font-weight: 650;
      margin-bottom: 6px;
    }
    .section-sub {
      color: #64748b;
      margin-bottom: 28px;
    }

    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 18px;
      margin-bottom: 48px;
    }
    .category-card {
      background: var(--surface);
      border-radius: var(--radius-md);
      padding: 24px 14px;
      text-align: center;
      box-shadow: var(--shadow-card);
      transition: transform 0.2s, box-shadow 0.2s;
      cursor: pointer;
    }
    .category-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 25px 30px -12px rgba(0,0,0,0.06);
    }
    .category-card i {
      font-size: 2.4rem;
      color: var(--accent);
      margin-bottom: 12px;
    }
    .category-card h4 {
      font-weight: 600;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 24px;
      margin-bottom: 48px;
    }
    .product-card {
      background: white;
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-card);
      transition: all 0.25s;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 28px 36px -12px rgba(0,0,0,0.08);
    }
    .product-img {
      height: 200px;
      background: #f8fafc;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 3.5rem;
      color: #7c3aed;
      background: linear-gradient(145deg, #f5f3ff, #ffffff);
    }
    .product-info {
      padding: 18px 16px;
      flex: 1;
    }
    .product-info h5 {
      font-weight: 650;
      font-size: 1.1rem;
      margin-bottom: 4px;
    }
    .category-tag {
      font-size: 0.8rem;
      color: #7c3aed;
      background: #ede9fe;
      padding: 3px 10px;
      border-radius: 20px;
      display: inline-block;
      margin: 6px 0;
    }
    .price-row {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-top: 10px;
    }
    .price {
      font-weight: 700;
      font-size: 1.3rem;
    }
    .old-price {
      text-decoration: line-through;
      color: #94a3b8;
      margin-left: 8px;
      font-size: 0.9rem;
    }
    .rating {
      color: #fbbf24;
      font-size: 0.9rem;
    }
    .product-actions {
      display: flex;
      padding: 0 16px 16px;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: #1e293b;
      color: white;
      border: none;
      padding: 12px;
      border-radius: 30px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
    }
    .add-btn:hover {
      background: var(--accent);
    }
    .wishlist-btn {
      background: #f1f5f9;
      border: none;
      border-radius: 30px;
      padding: 0 14px;
      cursor: pointer;
    }

    /* deal */
    .deal-card {
      background: #0f172a;
      color: white;
      border-radius: 36px;
      padding: 32px;
      display: flex;
      align-items: center;
      gap: 32px;
      margin: 40px 0;
      flex-wrap: wrap;
    }
    .deal-icon {
      font-size: 5rem;
      color: #c4b5fd;
    }
    .timer-box {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }
    .time {
      background: rgba(255,255,255,0.1);
      padding: 12px 16px;
      border-radius: 18px;
      text-align: center;
      min-width: 70px;
    }

    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding-bottom: 10px;
    }
    .testimonial {
      min-width: 300px;
      background: white;
      padding: 22px;
      border-radius: 24px;
      box-shadow: var(--shadow-card);
    }

    .newsletter {
      background: #ede9fe;
      border-radius: 36px;
      padding: 36px;
      text-align: center;
      margin: 48px 0;
    }
    .newsletter input {
      padding: 14px 20px;
      border-radius: 40px;
      border: 1px solid #ddd;
      width: 280px;
      max-width: 100%;
    }

    footer {
      border-top: 1px solid #e2e8f0;
      padding: 32px 0;
      color: #64748b;
    }

    @media (max-width: 850px) {
      .nav-links {
        display: none;
      }
      .mobile-menu-toggle {
        display: block;
      }
      .hero {
        flex-direction: column;
        text-align: center;
      }
      .search-wrap input {
        width: 120px;
      }
    }
  </style>
</head>
<body>
  <header class="header">
    <div class="container">
      <div class="logo">Nexus<span>Shop</span></div>
      <ul class="nav-links">
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
      <div class="header-actions">
        <div class="search-wrap">
          <i class="fas fa-search"></i>
          <input type="search" placeholder="Search..." id="searchInput" />
        </div>
        <button class="icon-btn"><i class="far fa-heart"></i></button>
        <button class="icon-btn" id="cartBtn">
          <i class="fas fa-shopping-cart"></i>
          <span class="cart-badge" id="cartCount">0</span>
        </button>
        <button class="mobile-menu-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      </div>
    </div>
  </header>

  <main class="container">
    <!-- Hero -->
    <section class="hero">
      <div class="hero-text">
        <h1>Fresh styles,<br>simpler shopping</h1>
        <p>Clean design meets smooth experience. Discover curated products.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-bolt"></i> Shop now</button>
          <button class="btn btn-outline" id="exploreDealsBtn">Today's deals</button>
        </div>
      </div>
      <div class="hero-image">
        <i class="fas fa-store-alt"></i>
      </div>
    </section>

    <!-- Categories -->
    <h2 class="section-title">Browse categories</h2>
    <p class="section-sub">Find exactly what you need</p>
    <div class="category-grid" id="categoryGrid"></div>

    <!-- Products -->
    <h2 class="section-title">Trending now</h2>
    <p class="section-sub">Popular this week</p>
    <div class="product-grid" id="productGrid"></div>

    <!-- Deal countdown -->
    <div id="deals" class="deal-card">
      <div><i class="fas fa-laptop deal-icon"></i></div>
      <div style="flex:1;">
        <h3 style="font-size:1.8rem;">MacBook Air M2</h3>
        <p style="opacity:0.8;">Lightning fast. Limited stock.</p>
        <div class="timer-box" id="dealTimer">
          <div class="time"><span id="dealDays">0</span><small>d</small></div>
          <div class="time"><span id="dealHours">00</span><small>h</small></div>
          <div class="time"><span id="dealMinutes">00</span><small>m</small></div>
          <div class="time"><span id="dealSeconds">00</span><small>s</small></div>
        </div>
        <div style="font-size:1.8rem; font-weight:700;">$999 <span style="text-decoration:line-through;font-size:1rem;opacity:0.7;">$1,199</span></div>
        <button class="btn btn-primary" style="margin-top:16px;" id="buyDealBtn"><i class="fas fa-cart-plus"></i> Grab deal</button>
      </div>
    </div>

    <!-- Testimonials -->
    <h2 class="section-title">Happy customers</h2>
    <div class="testimonial-scroll" id="testimonialContainer"></div>

    <!-- Newsletter -->
    <div class="newsletter">
      <h3 style="font-size:1.8rem;">Stay in the loop</h3>
      <p style="margin:8px 0 20px;">Exclusive offers straight to your inbox.</p>
      <div style="display:flex; gap:10px; justify-content:center; flex-wrap:wrap;">
        <input type="email" id="newsEmail" placeholder="your@email.com" />
        <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
      </div>
      <div id="newsMsg" style="margin-top:12px; font-weight:500;"></div>
    </div>
  </main>

  <footer>
    <div class="container" style="display:flex; justify-content:space-between; flex-wrap:wrap; gap:20px;">
      <span>© <span id="year"></span> NexusShop</span>
      <span>Privacy · Terms · Contact</span>
    </div>
  </footer>

  <script>
    (function() {
      // --- Data ---
      const CATEGORIES = [
        { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
      ];

      const PRODUCTS = [
        { id:1, title:'iPhone 14 Pro', price:1099, oldPrice:1199, rating:5, reviews:128, category:'phones', icon:'fa-mobile-alt' },
        { id:2, title:'MacBook Pro 14"', price:1999, rating:4.5, reviews:86, category:'laptops', icon:'fa-laptop' },
        { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, category:'accessories', icon:'fa-watch' },
        { id:4, title:'Nike Air Max', price:150, rating:4, reviews:53, category:'footwear', icon:'fa-shoe-prints' },
        { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, category:'gadgets', icon:'fa-camera' },
        { id:6, title:'Chanel N°5', price:120, rating:4.5, reviews:189, category:'accessories', icon:'fa-spray-can' },
        { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, category:'accessories', icon:'fa-bag-shopping' },
        { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, category:'gadgets', icon:'fa-headphones' }
      ];

      // State
      let cartCount = 0;
      const cartCountEl = document.getElementById('cartCount');
      const searchInput = document.getElementById('searchInput');

      function updateCartBadge() {
        cartCountEl.textContent = cartCount;
      }

      // Render categories
      const categoryGrid = document.getElementById('categoryGrid');
      function renderCategories() {
        categoryGrid.innerHTML = CATEGORIES.map(cat => `
          <div class="category-card" data-cat="${cat.name}">
            <i class="fas ${cat.icon}"></i>
            <h4>${cat.name}</h4>
          </div>
        `).join('');
        document.querySelectorAll('.category-card').forEach(card => {
          card.addEventListener('click', () => {
            const catName = card.dataset.cat;
            searchInput.value = catName;
            filterAndRender(catName);
            window.scrollTo({ top: document.getElementById('productGrid').offsetTop - 100, behavior: 'smooth' });
          });
        });
      }

      // Render products
      const productGrid = document.getElementById('productGrid');
      function renderProducts(products) {
        productGrid.innerHTML = products.map(p => `
          <div class="product-card">
            <div class="product-img"><i class="fas ${p.icon || 'fa-box'}"></i></div>
            <div class="product-info">
              <h5>${escapeHtml(p.title)}</h5>
              <span class="category-tag">${p.category}</span>
              <div class="price-row">
                <div><span class="price">$${p.price}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                <span class="rating">${'★'.repeat(Math.round(p.rating))} (${p.reviews})</span>
              </div>
            </div>
            <div class="product-actions">
              <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
              <button class="wishlist-btn"><i class="far fa-heart"></i></button>
            </div>
          </div>
        `).join('');

        document.querySelectorAll('.add-btn').forEach(btn => {
          btn.addEventListener('click', (e) => {
            const id = parseInt(btn.dataset.id, 10);
            cartCount++;
            updateCartBadge();
            btn.textContent = 'Added ✓';
            btn.disabled = true;
            setTimeout(() => {
              btn.innerHTML = '<i class="fas fa-cart-plus"></i> Add';
              btn.disabled = false;
            }, 1200);
          });
        });
      }

      function filterAndRender(query = '') {
        const q = query.trim().toLowerCase();
        if (!q) return renderProducts(PRODUCTS);
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        renderProducts(filtered);
      }

      function escapeHtml(text) {
        return String(text).replace(/[&<>"']/g, m => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'})[m]);
      }

      // Search
      document.querySelector('.search-wrap input').addEventListener('input', (e) => filterAndRender(e.target.value));
      document.querySelector('.fa-search').addEventListener('click', () => filterAndRender(searchInput.value));

      // Buttons
      document.getElementById('shopNowBtn').addEventListener('click', () => {
        window.scrollTo({ top: document.getElementById('productGrid').offsetTop - 80, behavior: 'smooth' });
      });
      document.getElementById('exploreDealsBtn').addEventListener('click', () => {
        document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
      });
      document.getElementById('buyDealBtn').addEventListener('click', () => {
        cartCount++;
        updateCartBadge();
        alert('Deal added to cart!');
      });

      // Deal timer
      function startDealTimer() {
        const end = new Date();
        end.setDate(end.getDate() + 1);
        end.setHours(end.getHours() + 2);
        function tick() {
          const now = new Date();
          const diff = end - now;
          if (diff <= 0) return;
          const d = Math.floor(diff / 86400000);
          const h = Math.floor((diff % 86400000) / 3600000);
          const m = Math.floor((diff % 3600000) / 60000);
          const s = Math.floor((diff % 60000) / 1000);
          document.getElementById('dealDays').textContent = d;
          document.getElementById('dealHours').textContent = String(h).padStart(2,'0');
          document.getElementById('dealMinutes').textContent = String(m).padStart(2,'0');
          document.getElementById('dealSeconds').textContent = String(s).padStart(2,'0');
        }
        tick();
        setInterval(tick, 1000);
      }

      // Testimonials
      const testimonialContainer = document.getElementById('testimonialContainer');
      testimonialContainer.innerHTML = [
        { text:'“Fast shipping and excellent support. Love the minimalist design!”', name:'Ava Martin', rating:5 },
        { text:'“Smooth checkout and quality products. Will shop again.”', name:'Michael Lee', rating:4 }
      ].map(t => `
        <div class="testimonial">
          <div style="color:#fbbf24;">${'★'.repeat(t.rating)}</div>
          <p style="margin:8px 0;">${t.text}</p>
          <strong>${t.name}</strong>
        </div>
      `).join('');

      // Newsletter
      document.getElementById('subscribeBtn').addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value.trim();
        const msg = document.getElementById('newsMsg');
        if (!email || !email.includes('@')) {
          msg.textContent = 'Please enter a valid email.';
          msg.style.color = '#b91c1c';
        } else {
          msg.textContent = 'Welcome aboard! 🎉';
          msg.style.color = '#15803d';
          document.getElementById('newsEmail').value = '';
        }
      });

      // Mobile toggle (simple)
      document.getElementById('mobileToggle').addEventListener('click', () => {
        alert('Mobile menu demo – categories visible below.');
      });

      // Footer year
      document.getElementById('year').textContent = new Date().getFullYear();

      // Init
      renderCategories();
      renderProducts(PRODUCTS);
      updateCartBadge();
      startDealTimer();
    })();
  </script>
</body>
</html>