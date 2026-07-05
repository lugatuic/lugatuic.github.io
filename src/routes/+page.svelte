<script>
    import LinkButton from "../shared/components/LinkButton.svelte";


</script>
<style>
    h1 {
        font-size: 48px;
        padding-bottom: 32px;
    }

    .desc {
        font-size: 20px;
        text-align: justify;
        /* max-width: 512px; */
        padding-bottom: 64px;
    }

    .subheader-container {
        width: 100%;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        gap: 32px;
        padding-bottom: 64px;
    }

    .subheader-container > img {
        max-width: 30%;
    }
</style>
<h2>Linux User Group @ University of Illinois Chicago</h2>
<div class="subheader-container">
    <div>
        <div class="desc">
            We are UIC's student-led community for Free & Open Source Software (FOSS).
            <br><br>
            LUG is a place for sharing ideas and collaborating on projects
            for the greater good of accessible and sustainable technology.
        </div>
        <div class="socials">
            <LinkButton link="/#" text="JOIN LUG" />
            <a class="link-discord" href="/#"></a>
            <a class="link-instagram" href="/#"></a>
            <a class="link-twitter" href="/#"></a>
        </div>
    </div>
    <img src="https://placehold.co/512x512" alt="logo" />
</div>
<div class="banner">
    <img src="https://placehold.co/1024x256" alt="banner" />
</div>
<div class="join">

</div>
<div class="events">

</div>
<div class="groups">

</div>
<div class="projects">

</div>
<div class="articles">

</div>