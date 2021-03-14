<script>
    import ApplicationForm from './ApplicationForm.svelte';
</script>

<header class="page-header">
    <h1>Buidl Grants</h1>
</header>

<main>
    <p>where am i</p>
    <ApplicationForm />
</main>

 
<style>

    header {
        text-align: left;   
    }

	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

    h1 {
		font-size: 4em;
		color: #212931;
        font-family: "Merriweather",Georgia,serif;
    }

	p {
        font-family: "Merriweather",Georgia,serif;
        font-weight: 300;
		color: #212931;
		font-size: 1rem;
		line-height: 2.375;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>
