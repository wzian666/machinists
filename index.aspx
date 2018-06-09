<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/index.css" />
    <script type="text/javascript" src="Scripts/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var slideBox = $(".slideBox");
            var ul = slideBox.find("ul");
            var oneWidth = slideBox.find("ul li").eq(0).width();
            var number = slideBox.find(".spanBox span");            //注意分号和逗号的用法
            var timer = null;
            var sw = 0;
            //每个span绑定click事件，完成切换颜色和动画，以及读取参数值
            number.on("click", function () {
                $(this).addClass("active").siblings("span").removeClass("active");
                sw = $(this).index();
                ul.animate({
                    "right": oneWidth * sw,    //ul标签的动画为向左移动；
                });
            });
            //左右按钮的控制效果
            $(".next").stop(true, true).click(function () {
                sw++;
                if (sw == number.length) { sw = 0 };
                number.eq(sw).trigger("click");
            });
            $(".prev").stop(true, true).click(function () {
                sw--;
                if (sw == number.length) { sw = 0 };
                number.eq(sw).trigger("click");
            });
            //定时器的使用，自动开始
            timer = setInterval(function () {
                sw++;
                if (sw == number.length) { sw = 0 };
                number.eq(sw).trigger("click");
            }, 2000);
            //hover事件完成悬停和，左右图标的动画效果
            slideBox.hover(function () {
                $(".next,.prev").animate({
                    "opacity": 1,
                }, 200);
                clearInterval(timer);
            }, function () {
                $(".next,.prev").animate({
                    "opacity": 0.5,
                }, 500);
                timer = setInterval(function () {
                    sw++;
                    if (sw == number.length) { sw = 0 };
                    number.eq(sw).trigger("click");
                }, 2000);
            })

        })
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="slideBox">
        <ul>
            <li><img src="Images/1.jpg" alt="" width="1260" height="720"/></li>
            <li><img src="Images/2.jpg" alt="" width="1260" height="720"/></li>
            <li><img src="Images/3.jpg" alt="" width="1260" height="720"/></li>
        </ul>
        <div class="spanBox">
            <span class="active">1</span>
            <span>2</span>
            <span>3</span>
        </div>
        <div class="prev"><img src="Images/left.png" width="15" height="50" alt=""/></div>
        <div class="next"><img src="Images/right.png" width="15" height="50" alt=""/></div>
    </div>
</asp:Content>

