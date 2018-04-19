const confirmedButton = document.querySelector(".btn-success-button");


document.addEventListener("click", (e) => {
    button.classList.toggle("remove-button");
});

const disappearingButton = document.querySelector(".remove-button");

disappearingButton.setOnClickListener(new OnClickListener() {
        @Override
        public void onClick(View v) {
            Button button = (Button) v;
            button.setVisibility(View.INVISIBLE);
        }
    });
