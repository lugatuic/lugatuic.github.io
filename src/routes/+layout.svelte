<script>
	import favicon from '$lib/assets/favicon.svg';

	let { children } = $props();
</script>
<style>
    .content {
        /* max-width: 1024px;
        margin: auto; */
        margin: 0px;
        top: 0px;
    }

    /* footer {
        padding: 32px;
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 64px;
        background-color: var(--dark-background);
    } */
</style>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>

<div class="content">
    {@render children()}
</div>

<!-- <footer>
    
</footer> -->