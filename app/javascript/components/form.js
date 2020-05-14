const DisableButtonForm = () => {
  const form = document.querySelector('form');
  const submit = document.querySelector('input[type=submit]');
  const input = document.querySelector('.required')

  if (input) {
    const inputs = document.querySelectorAll('.form-control.required');
    console.log(inputs);

    const validate = () => {
      let complete = 0;
      inputs.forEach((input) => {
        if (input.value) {
          complete += 1;
        };
      });
      if (inputs.length != complete) {
        submit.disabled = true;
        submit.classList.add("disabled");
      } else {
        submit.disabled = false;
        submit.classList.remove("disabled");
      };
    };

    validate();
    addEventListener('keyup', () => {
      validate();
    });
  }

}

export { DisableButtonForm };
