<script>
    let props = $props();
</script>
<style>
    .link-icon {
        transition: 250ms;
        cursor: pointer;
        background: var(--yellow);
        border: none;
        text-decoration: none;
        color: var(--background);
    }

    .link-icon:hover {
        background: var(--dark-yellow);
    }
</style>
<a class="link-icon" href={props.link}></a>