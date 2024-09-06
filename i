<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>En Güvenilir Siteler</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #2c3e50;
            overflow-x: hidden;
            color: #ecf0f1;
        }

        /* Arka plan için hareketli noktalar */
        .background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1;
            background: radial-gradient(circle, rgba(0,0,0,0.8) 0%, rgba(0,0,0,0.2) 100%);
            overflow: hidden;
        }

        .dot {
            position: absolute;
            width: 6px;
            height: 6px;
            background-color: #2ecc71;
            border-radius: 50%;
            animation: moveDots 10s linear infinite;
        }

        @keyframes moveDots {
            0% {
                transform: translateY(0) translateX(0);
                opacity: 1;
            }
            100% {
                transform: translateY(100vh) translateX(-100vw);
                opacity: 0;
            }
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
            padding-top: 20px;
            position: relative;
            z-index: 2;
        }

        /* Header bölümü */
        .header {
            background-color: #34495e;
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-bottom: 2px solid #ecf0f1;
            text-align: center;
        }

        .header img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .header h1 {
            margin: 0;
            font-size: 24px;
            color: #ecf0f1;
        }

        /* Banner Alanı */
        .banner-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 20px 0;
        }

        .banner-container a {
            display: block;
            width: 728px;
            height: 90px;
            max-width: 100%;
        }

        .banner-container img {
            width: 728px;
            height: 90px;
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }

        /* En Güvenilir Siteler */
        .trusted-sites {
            margin-bottom: 40px;
        }

        .trusted-sites h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .site-logos {
            display: flex;
            justify-content: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        .logo-container {
            width: 167px;
            height: 223px;
            background-color: #34495e;
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            flex-direction: column;
            position: relative;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .logo-container img {
            max-width: 147px;
            max-height: 203px;
            width: auto;
            height: auto;
        }

        /* Hover Efekti: Büyüme ve Öne Çıkma */
        .logo-container:hover {
            transform: scale(1.1);
            box-shadow: 0 0 30px rgba(46, 204, 113, 1), 0 0 30px rgba(231, 76, 60, 0.8);
            z-index: 5;
        }

        /* İkinci casino kutucuğu (data-number="2") için özel stil */
        .site-logos .logo-container[data-number="2"] {
            background-color: #003a78;
        }

        /* En Güvenilir Siteler için Yeşil Gölge ve Numaralandırma */
        .trusted-sites .logo-container {
            box-shadow: 0 0 20px rgba(46, 204, 113, 1);
        }

        .trusted-sites .logo-container::before {
            content: attr(data-number);
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: #27ae60;
            color: white;
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 50%;
            font-size: 18px;
        }

        /* Mobilde sayıları küçült */
        @media (max-width: 768px) {
            .trusted-sites .logo-container::before {
                font-size: 14px;
                padding: 3px 7px;
            }
        }

        /* Tavsiye Edilen Siteler */
        .recommended-sites {
            margin-bottom: 40px;
        }

        .recommended-sites h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .recommended-sites .site-logos {
            display: flex;
            justify-content: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        .recommended-sites .logo-container {
            width: 167px;
            height: 223px;
            background-color: #34495e;
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            flex-direction: column;
            position: relative;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .recommended-sites .logo-container img {
            max-width: 147px;
            max-height: 203px;
            width: auto;
            height: auto;
        }

        .recommended-sites .logo-container:hover {
            transform: scale(1.1);
            box-shadow: 0 0 30px rgba(46, 204, 113, 1), 0 0 30px rgba(231, 76, 60, 0.8);
            z-index: 5;
        }

        /* Promosyon Bölümü */
        .announcements {
            display: flex;
            justify-content: space-between;
            margin: 30px 0 20px 0;
            flex-wrap: wrap;
            gap: 20px;
        }

        .announcement {
            background-color: #34495e;
            padding: 20px;
            flex: 1 1 30%;
            border-radius: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-sizing: border-box;
        }

        .promo-content {
            flex: 1;
            margin-right: 20px;
        }

        .promo-content h3 {
            margin: 0;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .promo-content p {
            margin: 0;
            margin-bottom: 20px;
        }

        .promo-content button {
            padding: 10px 20px;
            background-color: #2ecc71;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .promo-content button:hover {
            background-color: #27ae60;
        }

        .promo-image img {
            max-width: 100px;
            max-height: 100px;
            border-radius: 10px;
        }

        /* Alt Kısım (Footer) */
        .footer {
            text-align: center;
            padding: 20px;
            background-color: #34495e;
            margin-top: 40px;
            border-top: 2px solid #ecf0f1;
        }

        .footer a {
            margin: 0 10px;
            color: #ecf0f1;
            text-decoration: none;
            font-size: 20px;
        }

        .footer a img {
            width: 30px;
            height: 30px;
            vertical-align: middle;
        }

        .footer p {
            margin-top: 10px;
            font-size: 16px;
        }

        /* RESPONSIVE TASARIM */
        @media (max-width: 768px) {
            .header {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            .header img {
                margin-bottom: 10px;
            }

            .banner-container img {
                width: 100%;
                height: auto;
            }

            .logo-container {
                width: 120px;
                height: 160px;
            }

            .logo-container img {
                max-width: 110px;
                max-height: 140px;
            }

            .announcement {
                flex-direction: column;
                align-items: center;
            }

            .promo-content {
                text-align: center;
                margin-right: 0;
            }

            .promo-content button {
                width: 100%;
                padding: 15px 0;
            }

            /* Tavsiye edilen siteler kutucuk boyutlarını en güvenilir siteler ile eşitle */
            .recommended-sites .logo-container {
                width: 120px;
                height: 160px;
            }

            .recommended-sites .logo-container img {
                max-width: 110px;
                max-height: 140px;
            }
        }

        @media (max-width: 480px) {
            .header h1 {
                font-size: 20px;
            }

            .promo-content h3 {
                font-size: 18px;
            }

            .promo-content button {
                font-size: 16px;
            }

            .logo-container {
                width: 100px;
                height: 140px;
            }

            .logo-container img {
                max-width: 90px;
                max-height: 120px;
            }

            /* Tavsiye edilen siteler kutucuk boyutlarını en güvenilir siteler ile eşitle */
            .recommended-sites .logo-container {
                width: 100px;
                height: 140px;
            }

            .recommended-sites .logo-container img {
                max-width: 90px;
                max-height: 120px;
            }
        }
    </style>
</head>
<body>
    <!-- Arka Plan için Noktalar -->
    <div class="background">
        <div class="dot" style="top: 10%; left: 20%;"></div>
        <div class="dot" style="top: 30%; left: 40%;"></div>
        <div class="dot" style="top: 50%; left: 60%;"></div>
        <div class="dot" style="top: 70%; left: 80%;"></div>
        <div class="dot" style="top: 90%; left: 20%;"></div>
    </div>

    <div class="container">
        <!-- Header -->
        <div class="header">
            <img src="https://i.ibb.co/st6G73W/Leonardo-Phoenix-A-sophisticated-highstakes-roulette-academy-l-1.jpg" alt="Site Logo">
            <h1>Roulette Academy🔥 </h1>
        </div>

        <!-- Üst Bannerlar -->
        <div class="banner-container">
            <a id="top-banner-link" href="https://example.com/banner1" target="_blank">
                <img id="top-banner" src="https://i.ibb.co/4pRybdS/kddddtyt.png" alt="728x90 Banner">
            </a>
        </div>

        <!-- En Güvenilir Siteler Bölümü -->
        <div class="trusted-sites">
            <h2>Sites de cassino mais confiáveis</h2>
            <div class="site-logos">
                <a href="https://stake.com/?c=9dd9dbc553" target="_blank" class="logo-container" data-number="1">
                    <img src="https://i.ibb.co/HYyK0Jj/Stakeusd.png" alt="Site 1">
                </a>
                <a href="https://t.ly/eAL_1" target="_blank" class="logo-container" data-number="2">
                    <img src="https://i.ibb.co/x2B2387/MOST.png" alt="Site 2">
                </a>
                <a href="https://gopartner.link/?a=205678&c=184089&s1=6028" target="_blank" class="logo-container" data-number="3">
                    <img src="https://i.ibb.co/myC3cZj/slottica.png" alt="Site 3">
                </a>
            </div>
        </div>

        <!-- Tavsiye Edilen Siteler Bölümü -->
        <div class="recommended-sites">
            <h2>Tavsiye Edilen Siteler</h2>
            <div class="site-logos">
                <a href="https://bit.ly/3RF81eI" target="_blank" class="logo-container">
                    <img src="https://i.ibb.co/18ytFPR/MARSBAH-S.png" alt="Site 4">
                </a>
                <a href="https://billytraff.com/ge40c56a1" target="_blank" class="logo-container">
                    <img src="https://i.ibb.co/rFRqzY5/billybe.png" alt="Site 5">
                </a>
                <a href="#" target="_blank" class="logo-container">
                    <img src="https://i.ibb.co/ZYYTmjY/bulna-k.png" alt="Site 6">
                </a>
                <a href="#" target="_blank" class="logo-container">
                    <img src="https://i.ibb.co/ZYYTmjY/bulna-k.png" alt="Site 7">
                </a>
                <a href="#" target="_blank" class="logo-container">
                    <img src="https://i.ibb.co/ZYYTmjY/bulna-k.png" alt="Site 8">
                </a>
            </div>
        </div>

        <!-- Alt Bannerlar -->
        <div class="banner-container">
            <a id="bottom-banner-link" href="https://example.com/banner2" target="_blank">
                <img id="bottom-banner" src="https://i.ibb.co/4pRybdS/kddddtyt.png" alt="728x90 Banner">
            </a>
        </div>

        <!-- Duyurular Bölümü (Promosyonlar) -->
        <div class="announcements">
            <div class="announcement">
                <div class="promo-content">
                    <h3>Mostbet 3x Bonus Etkinliği</h3>
                    <p>200 Lira Yatır 600 Lira Bonus Bizden</p>
                   <a href="https://forms.gle/NaUHKWUgovzXJoJ87" target="_blank">
                    <button>Hemen Katıl</button>
                    </a>
                </div>
                <div class="promo-image">
                    <img src="https://i.ibb.co/2qsLGzv/REGISTER-10-USDT-GET.png" alt="Promosyon 1">
                </div>
            </div>
            <div class="announcement">
                <div class="promo-content">
                    <h3>Stake Rulet Etkinliği</h3>
                    <p>50 USD Yatır 2x Yap 100 USD Bizden.</p>
                    <a href="https://forms.gle/vxPyf43CVLchbzme7" target="_blank">
                    <button>Hemen Katıl</button>
                    </a>
                </div>
                <div class="promo-image">
                    <img src="https://i.ibb.co/2qsLGzv/REGISTER-10-USDT-GET.png" alt="Promosyon 2">
                </div>
            </div>
            <div class="announcement">
                <div class="promo-content">
                    <h3>Telegram Arkadaş Davet Etkinliği</h3>
                    <p>5 Arkadaşını Davet et 330,000 Liradan Pay AL.</p>
                    <button>Hemen Katıl</button>
                </div>
                <div class="promo-image">
                    <img src="https://i.ibb.co/2qsLGzv/REGISTER-10-USDT-GET.png" alt="Promosyon 3">
                </div>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            <a href="https://t.me/" target="_blank">
                <img src="https://cdn-icons-png.flaticon.com/512/2111/2111646.png" alt="Telegram">
                Telegram
            </a>
            <a href="https://www.skype.com/" target="_blank">
                <img src="https://cdn-icons-png.flaticon.com/512/174/174869.png" alt="Skype">
                Skype
            </a>
            <p>ROULETTE ACADEMY 2024</p>
        </div>

    <script>
        // Üst banner dizisi
        const topBanners = [
            { url: "https://i.ibb.co/f8cYCgf/Stake-Banners-728x90.jpg", link: "https://i.ibb.co/HYyK0Jj/Stakeusd.png" },
            { url: "https://i.ibb.co/JcYmVMs/BANNERmostt-1.png", link: "https://t.ly/eAL_1" }
        ];

        // Alt banner dizisi
        const bottomBanners = [
            { url: "https://i.ibb.co/3mt6tW1/B-LLY.png", link: "https://billytraff.com/ge40c56a1" },
            { url: "https://i.ibb.co/JcYmVMs/BANNERmostt-1.png", link: "https://t.ly/eAL_1" }
        ];

        let topBannerIndex = 0;
        let bottomBannerIndex = 0;

        // Banner değiştirme fonksiyonu
        function changeBanners() {
            // Üst banner değiştir
            topBannerIndex = (topBannerIndex + 1) % topBanners.length;
            document.getElementById("top-banner").src = topBanners[topBannerIndex].url;
            document.getElementById("top-banner-link").href = topBanners[topBannerIndex].link;

            // Alt banner değiştir
            bottomBannerIndex = (bottomBannerIndex + 1) % bottomBanners.length;
            document.getElementById("bottom-banner").src = bottomBanners[bottomBannerIndex].url;
            document.getElementById("bottom-banner-link").href = bottomBanners[bottomBannerIndex].link;
        }

        // Her 5 saniyede bir bannerları değiştir
        setInterval(changeBanners, 5000);
    </script>
</body>
</html>
