
// 버튼 클릭 시 숫자 증가/감소 room1
$(function() {
  $('#decreaseQuantity1').click(function(e) {
    e.preventDefault();
    var stat = $('#numberUpDown1').text();
    var num = parseInt(stat, 10);
    num--;
    if (num <= 0) {
      //alert('더이상 줄일수 없습니다.');
      num = 0;
    }
    $('#numberUpDown1').text(num);
  });
  $('#increaseQuantity1').click(function(e) {
    e.preventDefault();
    var stat = $('#numberUpDown1').text();
    var num = parseInt(stat, 10);
    num++;

    if (num > 3) {
      alert('입실 가능한최대 인원은 3명입니다.');
      num = 3;
    }
    $('#numberUpDown1').text(num);
  });
});
// 버튼 클릭 시 숫자 증가/감소 room2
$(function() {
  $('#decreaseQuantity2').click(function(e) {
    e.preventDefault();
    var stat = $('#numberUpDown2').text();
    var num = parseInt(stat, 10);
    num--;
    if (num <= 0) {
      //alert('더이상 줄일수 없습니다.');
      num = 0;
    }
    $('#numberUpDown2').text(num);
  });
  $('#increaseQuantity2').click(function(e) {
    e.preventDefault();
    var stat = $('#numberUpDown2').text();
    var num = parseInt(stat, 10);
    num++;

    if (num > 3) {
      alert('입실 가능한최대 인원은 3명입니다.');
      num = 3;
    }
    $('#numberUpDown2').text(num);
  });
});
// 버튼 클릭 시 숫자 증가/감소 room3
$(function() {
  $('#decreaseQuantity3').click(function(e) {
    e.preventDefault();
    var stat = $('#numberUpDown3').text();
    var num = parseInt(stat, 10);
    num--;
    if (num <= 0) {
      //alert('더이상 줄일수 없습니다.');
      num = 0;
    }
    $('#numberUpDown3').text(num);
  });
  $('#increaseQuantity3').click(function(e) {
    e.preventDefault();
    var stat = $('#numberUpDown3').text();
    var num = parseInt(stat, 10);
    num++;

    if (num > 3) {
      alert('입실 가능한최대 인원은 3명입니다.');
      num = 3;
    }
    $('#numberUpDown3').text(num);
  });
});
// 버튼 클릭 시 숫자 증가/감소 room4
$(function() {
  $('#decreaseQuantity4').click(function(e) {
    e.preventDefault();
    var stat = $('#numberUpDown4').text();
    var num = parseInt(stat, 10);
    num--;
    if (num <= 0) {
      //alert('더이상 줄일수 없습니다.');
      num = 0;
    }
    $('#numberUpDown4').text(num);
  });
  $('#increaseQuantity4').click(function(e) {
    e.preventDefault();
    var stat = $('#numberUpDown4').text();
    var num = parseInt(stat, 10);
    num++;

    if (num > 3) {
      alert('입실 가능한최대 인원은 3명입니다.');
      num = 3;
    }
    $('#numberUpDown4').text(num);
  });
});
// 버튼 클릭 시 숫자 증가/감소 room5
$(function() {
  $('#decreaseQuantity5').click(function(e) {
    e.preventDefault();
    var stat = $('#numberUpDown5').text();
    var num = parseInt(stat, 10);
    num--;
    if (num <= 0) {
      //alert('더이상 줄일수 없습니다.');
      num = 0;
    }
    $('#numberUpDown5').text(num);
  });
  $('#increaseQuantity5').click(function(e) {
    e.preventDefault();
    var stat = $('#numberUpDown5').text();
    var num = parseInt(stat, 10);
    num++;

    if (num > 3) {
      alert('입실 가능한최대 인원은 3명입니다.');
      num = 3;
    }
    $('#numberUpDown5').text(num);
  });
});