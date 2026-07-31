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
        text-align: center;
        color: var(--background);
    }

    .link-button:hover {
        background: orange;
    }

    @media screen and (width < 768px) {
        .full-size {
            width: 100%;
            padding: 16px 0px 16px 0px;
        }
    }
</style>
{#if props.mobile_full_size == 1}
    <a class="link-button full-size" href={props.link} style={props.style}>{props.text}</a>
{:else}
    <a class="link-button" href={props.link} style={props.style}>{props.text}</a>
{/if}
