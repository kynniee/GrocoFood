<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!-- using JSTL -->
<%@ taglib uri="jakarta.tags.core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    
<!-- header section starts  -->

<header class="header">

    <section class="flex">
    
<a href="#" class="logo"> <i class="fas fa-shopping-basket"></i> groco </a>

    <nav class="navbar">
        <a href="#home">Trang chủ</a>
        <a href="#features">Tính Năng</a>
        <a href="#products">Sản Phẩm</a>
        <a href="#categories">Danh Mục</a>
        <a href="#review">Đánh Giá</a>
        <a href="#blogs">Bài Viết</a>
        <c:if test="${sessionScope.acc.isAdmin == 1}">
            <a href="admin">Admin</a>
        </c:if>
    </nav>

    <div class="icons">
        <div class="fas fa-bars" id="menu-btn"></div>
        <div class="fas fa-search" id="search-btn"></div>
        <div class="fas fa-shopping-cart" id="cart-btn"></div>
        <div class="fas fa-user" id="login-btn"></div>
    </div>

    <form action="" class="search-form">
        <input type="search" id="search-box" placeholder="search here...">
        <label for="search-box" class="fas fa-search"></label>
    </form>

    <div class="shopping-cart">
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="image/cart-img-1.png" alt="">
            <div class="content">
                <h3>Dưa hấu 2kg </h3>
                <span class="price">21.900₫</span>
                <span class="quantity">qty : 1</span>
            </div>
        </div>
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="image/cart-img-2.png" alt="">
            <div class="content">
                <h3>Hành Tím  </h3>
                <span class="price">15.000₫</span>
                <span class="quantity">qty : 1</span>
            </div>
        </div>
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="image/cart-img-3.png" alt="">
            <div class="content">
                <h3>Gà Công Nghiệp nguyên con 1kg-1.3kg</h3>
                <span class="price">69.000₫</span>
                <span class="quantity">qty : 1</span>
            </div>
        </div>
        <div class="total"> tổng :105.900 </div>
        <a href="#" class="btn">checkout</a>
    </div>

    <form action="login" method="post" class="login-form">
        <c:if test="${sessionScope.acc != null}">
            <h4>Xin chào ${sessionScope.acc.user}</h4>
            <a href="logout">logout</a>
        </c:if>
        <c:if test="${sessionScope.acc == null}">
            <h3>login now</h3>
            <input name = "user" type="text" placeholder="your email" class="box">
            <input name = "pass" type="password" placeholder="your password" class="box">
            <p>forget your password <a href="#">click here</a></p>
            <p>don't have an account <a href="signup">create now</a></p>
            <input type="submit" value="login now" class="btn">
        </c:if>
    </form>

    </section>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<div class="home-container">

    <section class="home" id="home">

        <div class="content">
            <h3>SẢN PHẨM  <span>TƯƠI</span> VÀ<span> HỮU CƠ</span> CHO BẠN </h3>
            <p>THỰC PHẨM SẠCH CHO GIA ĐÌNH VIỆT </p>
            <a href="#" class="btn">Đến Ngay</a>
        </div>
    
    </section>

</div>

<!-- home section ends -->

<!-- features section starts  -->

<section class="features" id="features">

    <h1 class="heading"> Một Số <span>Tính Năng</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="image/feature-img-1.png" alt="">
            <h3>Tươi và Sạch</h3>
        <p>
             Kỹ thuật sản xuất phải đạt tiêu chuẩn hóa 
             Dễ dàng truy tìm nguồn gốc thực phẩm .

        </p>
            <a href="#" class="btn">Xem Thêm </a>
        </div>

        <div class="box">
            <img src="image/feature-img-2.png" alt="">
            <h3>Giao hàng Miễn PHí </h3>
            <p>Nhanh chóng thuận tiện,thân thiện và miễn phí vận chuyển </p>
            <a href="#" class="btn">Xem Thêm</a>
        </div>

        <div class="box">
            <img src="image/feature-img-3.png" alt="">
            <h3>Thanh Toán Dễ Dàng</h3>
            <p>Dễ dàng thanh toán trên mọi nền tảng với nhiều phương thức khác nhau</p>
            <a href="#" class="btn">Xem Thêm</a>
        </div>

    </div>

</section>

<!-- features section ends -->

<!-- products section starts  -->

<section class="products" id="products">

    <h1 class="heading"> Một Số <span>Sản Phẩm </span> </h1>

    <div class="swiper product-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="image/product-1.png" alt="">
                <h3>Cam vàng úc 1kg </h3>
                <div class="price"> 69.000  ₫ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">Mua</a>
            </div>

            <div class="swiper-slide box">
                <img src="image/product-2.png" alt="">
                <h3>Hành tím 300g</h3>
                <div class="price"> 15.000₫ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">Mua</a>
            </div>

            <div class="swiper-slide box">
                <img src="image/product-3.png" alt="">
                <h3>Thịt bò ba chỉ 250g</h3>
                <div class="price"> 80.000₫
                    / </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">Mua</a>
            </div>

            <div class="swiper-slide box">
                <img src="image/product-4.png" alt="">
                <h3>Bắp cải 500-600g</h3>
                <div class="price"> 12.000₫ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">Mua</a>
            </div>

        </div>

    </div>

    <div class="swiper product-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="image/product-5.png" alt="">
                <h3>Khoai tây Đà Lạt(3-7 củ)</h3>
                <div class="price"> 16.000₫ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">Mua</a>
            </div>

            <div class="swiper-slide box">
                <img src="image/product-6.png" alt="">
                <h3>Bơ Sáp 1kg</h3>
                <div class="price"> 18.000₫ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">Mua</a>
            </div>

            <div class="swiper-slide box">
                <img src="image/product-7.png" alt="">
                <h3>Cà rốt Đà Lạt</h3>
                <div class="price"> 19.000₫ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">Mua</a>
            </div>

            <div class="swiper-slide box">
                <img src="image/product-8.png" alt="">
                <h3>Chanh không hạt 250g</h3>
                <div class="price"> 13.000₫ </div>
                <div class="stars">
                    <i class="fas fa-stars"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">Mua</a>
            </div>

        </div>

    </div>


</section>

<!-- products section ends -->

<!-- categories section starts  -->

<section class="categories" id="categories">

    <h1 class="heading"> Danh Mục<span>Sản Phẩm </span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="image/cat-1.png" alt="">
            <h3>Rau Củ Quả</h3>
            <p>upto 45% off</p>
            <a href="#" class="btn">Đến Ngay </a>
        </div>

        <div class="box">
            <img src="image/cat-2.png" alt="">
            <h3>Trái cây tươi</h3>
            <p>upto 30% off</p>
            <a href="#" class="btn">Đến Ngay </a>
        </div>

        <div class="box">
            <img src="image/cat-3.png" alt="">
            <h3>Sản phẩm sữa</h3>
            <p>upto 50% off</p>
            <a href="#" class="btn">Đến ngay</a>
        </div>

        <div class="box">
            <img src="image/cat-4.png" alt="">
            <h3>Thịt tươi sống</h3>
            <p>upto 10% off</p>
            <a href="#" class="btn">Đến ngay</a>
        </div>

    </div>

</section>

<!-- categories section ends -->

<!-- review section starts  -->

<section class="review" id="review">

    <h1 class="heading">    <span>Đánh Giá </span> </h1>

    <div class="swiper review-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="image/pic-1.png" alt="">
                <p>Sản phẩm chất lượng, tươi xanh giao hàng nhanh chóng </p>
                <h3>Ông 7 hàng xóm </h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/pic-2.png" alt="">
                <p>Từ lúc mà có cửa hàng này tui không phải thức sớm để đi chợ nữa</p>
                <h3>Cô Tư </h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/pic-3.png" alt="">
                <p>Giá hợp lý hàng hóa đa dạng có thể thanh toán được nhiều phương thức  </p>
                <h3>Anh Tám </h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="image/pic-4.png" alt="">
                <p>Hợp vệ sinh rẻ và rất tươi,shipper thân thiện nhiệt tình </p>
                <h3>Chị Bảy</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

        </div>

    </div>

</section>

<!-- review section ends -->

<!-- blogs section starts  -->

<section class="blogs" id="blogs">

    <h1 class="heading"><span>Bài Viết</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="image/blog-1.jpg" alt="">
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-user"></i> by user </a>
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may, 2021 </a>
                </div>
                <h3>Lợi Ích Của Việc Ăn Rau </h3>    
                <a href="#" class="btn">Xem Thêm</a>
            </div>
        </div>

        <div class="box">
            <img src="image/blog-2.jpg" alt="">
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-user"></i> by user </a>
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may, 2021 </a>
                </div>
                <h3>Rau Sạch Bắt Nguồn Từ Đâu ? <h3>
                <a href="#" class="btn">Xem Thêm</a>
            </div>
        </div>

        <div class="box">
            <img src="image/blog-3.jpg" alt="">
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-user"></i> by user </a>
                    <a href="#"> <i class="fas fa-calendar"></i> 1st may, 2021 </a>
                </div>
                <h3>Hậu Quả Khi Không Ăn Rau </h3>
                <p></p>
                <a href="#" class="btn">Xem Thêm </a>
            </div>
        </div>

    </div>

</section>

<!-- blogs section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3> groco <i class="fas fa-shopping-basket"></i> </h3>
            <p>Thực Phẩm Sạch Cho Gia Đình Việt. Nơi lựa chọn thực phẩm sạch </p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +123-456-7890 </a>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +111-222-3333 </a>
            <a href="#" class="links"> <i class="fas fa-envelope"></i> PM06@gmail.com </a>
            <a href="#" class="links"> <i class="fas fa-map-marker-alt"></i> TPHCM GIA DINH</a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> features </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> products </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> categories </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> review </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> blogs </a>
        </div>

        <div class="box">
            <h3>newsletter</h3>
            <p>subscribe for latest updates</p>
            <input type="email" placeholder="your email" class="email">
            <input type="submit" value="subscribe" class="btn">
            <img src="image/payment.png" class="payment-img" alt="">
        </div>

    </div>

</section>

<!-- footer section ends -->

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>