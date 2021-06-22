<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
#star {
  display: flex;
}

.star {
  font-size: 2rem;
  margin: 10px 0;
  cursor: pointer;
}

.star:not(.on) {
  color: #ccc;
}

.star.on {
  color: orange;
}

</style> 
</head>
<body>
<form action="REVIEW_insert">
<div class="star-container" id="star">

  <span class="star">★</span>
  <span class="star">★</span>
  <span class="star">★</span>
  <span class="star">★</span>
  <span class="star">★</span>

</div>
<script src="js/jquery-3.6.0.js"></script>
<script>

import './style.css';

// Write Javascript code!
function () {
    var starEls = document.querySelectorAll('#star span.star');
    var rate = 0;

    loop(starEls, function (el, index) {
        el.addEventListener('click', function () {
            rating(index + 1);
        });
    });

    function loop(list, func) {
        Array.prototype.forEach.call(list, func);
    }

    function rating(score) {
        loop(starEls, function (el, index) {
            if (index < score) {
                el.classList.add('on');
            } else {
                el.classList.remove('on');
            }
        });

        rate = score;
    }
};
</script>
</form>
</body>
</html>