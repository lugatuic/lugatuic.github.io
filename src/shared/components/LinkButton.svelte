<script>
    let props = $props();
</script>
<style>
    .link-button {
        display: block;
        width: fit-content;
        padding: 16px;
        font-size: 20px;
        font-weight: 600;
        transition: 250ms;
        position: relative;
        cursor: pointer;
        background: yellow;
        border: none;
        text-decoration: none;
        color: var(--background);
    }

    .link-button:hover {
        background: orange;
    }
</style>
<a class="link-button" href={props.link}>{props.text}</a>