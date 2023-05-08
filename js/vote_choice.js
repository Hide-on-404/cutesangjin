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

// DB에 투표글 추가
function uploadChoice(){
	var numb = document.getElementById("numb");
	var choiceSub = document.getElementById("choiceSub");
	var choice_1 = document.getElementById("choice_1");
	var choice_2 = document.getElementById("choice_2");	

// 따봉 누르면(checkbox == checked) 카운트 1 증가
/// 한번 더누르면(checkbox != checked ) 카운트 1 감소


// count 합산으로 prcnt gradation 비율 변화
/// grd = count1 / (count1 + count2) * 100
//// .prcnt: 막대바 / .count1: 왼쪽 / .coutn2: 오른쪽





// 따봉비율 높은곳에 % 표시
/// grd>=50 ? 왼쪽에 % : 오른쪽에%;