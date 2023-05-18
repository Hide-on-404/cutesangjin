// + 버튼으로 투표글 추가하기
window.addEventListener('DOMContentLoaded', () => {
  const buttons = document.querySelectorAll('.button button');
  const writeWraps = document.querySelectorAll('.addChoice');
  buttons.forEach((button, index) => {
      button.addEventListener('click', () => {
          writeWraps[index].classList.toggle('hide');
          if (button.textContent === '+') {
              button.textContent = '-';
          } else {
              button.textContent = '+';
          }
      });
  });
});

// 수정창 껏다켰다
window.addEventListener('DOMContentLoaded', () => {
  const btn = document.querySelectorAll('.editBtn');
  const writeForm = document.querySelectorAll('.editChoice');
  btn.forEach((editBtn, index) => {
      editBtn.addEventListener('click', () => {
          writeForm[index].classList.toggle('hide');
      });
	});
});

// 연필 누르면 X로 바뀌고, 또누르면 다시 연필로 바뀜
  $(".imgtoggle").click(function() {
    var arrowImage = $(this).children("span").children("img");
    arrowImage.attr("src", function(index, attr){
      if (attr.match('open')) {
        return attr.replace("open", "close");
      }
      else {
        return attr.replace("close", "open");
      }
    });
  });
  
// 따봉 누르면(checkbox == checked) 카운트 1 증가
/// 한번 더누르면(checkbox != checked ) 카운트 1 감소
/*
// 좌측 따봉버튼
function leftCheckboxClick(checkbox, otherCheckboxId) {
  const otherCheckbox = document.getElementById(otherCheckboxId);
  const count1Element = document.querySelector('.count1').innerText;
  const count2Element = document.querySelector('.count2').innerText;;

  if (checkbox.checked) {
    otherCheckbox.disabled = true;
    if (confirm("선택하시겠습니까?")) {
		// 카운트 증가
      count1After = parseInt(count1Element) + 1;
     alert("증가 전: " + count1Element +"\n"+
     		"증가 후: " + count1After);     
	
      return count1After = parseInt(count1Element) + 1;
    } else {
      checkbox.checked = false;
      otherCheckbox.disabled = false;
      return false;
    }
  } else {
    otherCheckbox.disabled = false;
	// 카운트 감소
    if (confirm("선택을 취소하시겠습니까?\n\n(대충 두둥-하는 웅장한 브금)")) {
      count1Plus = parseInt(count1Element) + 1;
      count1After = parseInt(count1Element);
     alert("감소 전: " + count1Plus +"\n"+
     		"감소 후: " + count1After);   
      return count1After = parseInt(count1Element);
    } else {
      checkbox.checked = true;
      otherCheckbox.disabled = true;
      return false;
    }
  }
}
 function upLeftCount(num){
	location.href='countUp?choice1_count='+count1After+'&choice2_count=3'+'&num='+num;
}*/

function CheckboxClick(num, state) {
  // 왼쪽 체크박스 클릭 시
  if (state == 'leftGood') {
	  upCount(num, state);
    // 오른쪽 체크박스 해제
    document.querySelectorAll('.rightCheck').forEach(function(checkbox) {
      checkbox.checked = false;
    });
  }
  // 오른쪽 체크박스 클릭 시
  else if (state == 'rightGood') {
	  upCount(num, state)
    // 왼쪽 체크박스 해제
    document.querySelectorAll('.leftCheck').forEach(function(checkbox) {
      checkbox.checked = false;
    });
  }}


function upCount(num, state) {
	
	if(state == 'leftGood'){
		alert(state);
       location.href = 'countUp?num=' + num + '&choice1_count=' + 1 + '&choice2_count=' + 0;
  }else if(state == 'rightGood'){
	  alert(state);
	    location.href = 'countUp?num=' + num + '&choice1_count=' + 0 + '&choice2_count=' +1;
  }
}






