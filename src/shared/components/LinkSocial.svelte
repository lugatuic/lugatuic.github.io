<script>
    let props = $props();
</script>
<style>
    .link-icon {
        display: flex;
        align-items: center;
        width: 32px;
        height: 32px;
        transition: 250ms;
    }

    .link-icon > img {
        width: 100%;
    }
</style>
<a class="link-icon" href={props.link}>
    <img src="/icons/{props.icon}_logo.svg" alt="{props.icon}" />
</a>