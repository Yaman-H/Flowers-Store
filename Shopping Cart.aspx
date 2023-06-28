<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shopping Cart.aspx.cs" Inherits="Flowers_Store.Shopping_Cart" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style2.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Shopping Cart</title>
</head>

<body>
    <header>
        <div class="nav container">
            <a href="#" class="logo">LARES FLOWER</a>
            <i class="fa-solid fa-bag-shopping" id="cart-icon"></i>
            <div class="cart">
                <h2 class="cart-title">Your Cart</h2>
                <div class="cart-content">
                </div>
                <div class="total">
                    <div class="total-title">Total</div>
                    <div class="total-price">$0</div>
                </div>
                <a href="Exit Page.aspx"><button type="button" class="btn-buy">Buy Now</button></a>
                <i class="fa-solid fa-xmark" id="close-cart"></i>
            </div>
        </div>
    </header>
    <section class="shop container">
        <h2 class="section-title">shop products <h2>
            <div class="shop-content">
                <div class="product-box">
                    <img src="picture/wr1.png" alt="" class="product-img">
                    <h2 class="product-title">White Roses Bouquet</h2>
                    <span class="price">$45</span>
                    <i class="fa-solid fa-bag-shopping add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="picture/wr2.png" alt="" class="product-img">
                    <h2 class="product-title">White Tulip Bouquet</h2>
                    <span class="price">$15</span>
                    <i class="fa-solid fa-bag-shopping add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="picture/wr3.png" alt="" class="product-img">
                    <h2 class="product-title">Assorted Rose Bouquet</h2>
                    <span class="price">$40</span>
                    <i class="fa-solid fa-bag-shopping add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="picture/wr4.jpg" alt="" class="product-img">
                    <h2 class="product-title">Sunflower And Roses Bouquet</h2>
                    <span class="price">$38</span>
                    <i class="fa-solid fa-bag-shopping add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="picture/wr5.png" alt="" class="product-img">
                    <h2 class="product-title">Assorted Flower Box</h2>
                    <span class="price">$50</span>
                    <i class="fa-solid fa-bag-shopping add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="picture/wr6.jpg" alt="" class="product-img">
                    <h2 class="product-title">Red Roses Bouquet</h2>
                    <span class="price">$22</span>
                    <i class="fa-solid fa-bag-shopping add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="picture/urle.jpg" alt="" class="product-img">
                    <h2 class="product-title">Purple Flowers Box</h2>
                    <span class="price">$48</span>
                    <i class="fa-solid fa-bag-shopping add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="picture/wr8.jpg" alt="" class="product-img">
                    <h2 class="product-title">Pink Tulip Bouquet</h2>
                    <span class="price">$23</span>
                    <i class="fa-solid fa-bag-shopping add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="picture/wr9.png" alt="" class="product-img">
                    <h2 class="product-title">Blue Gypsophila Bouquet</h2>
                    <span class="price">$35</span>
                    <i class="fa-solid fa-bag-shopping add-cart"></i>
                </div>
            </div>
    </section>

    <script src="./java.js"></script>
</body>


</html>
