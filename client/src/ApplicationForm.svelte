<script>
    let form_error = false;   

    async function handleSubmit(event){
        let email = event.target.email.value
        let twitterHandle = event.target.twitterHandle.value
        let buidlText = event.target.buidlText.value
        // validate twitter handle
        // send to backend, or alert
        console.log(event.target.email.value);
        response = postData('/handleapplication', {
          "email": email, 
          "twitterHandle": twitterHandle, 
          "buidlText": buidlText
        })
        console.log(response)
    }

    function validateForm(event) {


    }

    async function postData(url = '', data = {}) {
      const response = await fetch(url, {
        method: 'POST', 
        mode: 'cors', 
        cache: 'no-cache',
        credentials: 'same-origin',
        headers: {
          'Content-Type': 'application/json'
        },
        redirect: 'follow', 
        referrerPolicy: 'no-referrer',
        body: JSON.stringify(data) 
      })
      return response.json()
    }

</script>

<form id="buidlApplication" on:submit|preventDefault="{handleSubmit}" >
  <label for="email">Email</label>
  <input required type="email" id="email" name="email" placeholder=" " /><br>

  <label for="twitterHandle">Twitter Handle</label>
  <input required type="text" id="twitterHandle" name="twitterHandle" placeholder="@" outline: none /><br>

  <label for="buidlText">What will you buidl?</label>
  <textArea required type="text" id="buidlText" name="buidlText" rows="4" cols="50" maxlength="1000"  placeholder=" " /><br><br>

  <input type="submit" value="Submit Application" id="submitButton">
</form>

<style>
    label {
      padding: 4px 8px;
    }

    input {
      border: 1px solid #ddd;
      border-radius: 6px;
      padding: 4px 8px;
    }

    input:valid {
      border: 2px solid darkgrey;
    }

    input:not(:placeholder-shown):not(:focus):invalid {
      border: 1px solid coral;
    }

    textarea {
      border: 1px solid #ddd;
      padding: 4px 8px;
    }

    textarea {
      border: 1px solid #ddd;
      border-radius: 6px;
      padding: 4px 8px;
    }

    textarea:valid {
      border: 2px solid darkgrey;
    }

    textarea:not(:placeholder-shown):not(:focus):invalid {
      border: 1px solid coral;
    }

</style>
