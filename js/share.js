window.addEventListener('DOMContentLoaded', () => {
    const buttons = document.querySelectorAll('.button button');
    const writeWraps = document.querySelectorAll('.board_write_wrap');
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