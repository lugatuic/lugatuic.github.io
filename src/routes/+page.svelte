<script>
    import LinkButton from "../shared/components/LinkButton.svelte";
    import LinkSocial from "../shared/components/LinkSocial.svelte";
    import SimpleLogo from "../shared/icons/SimpleLogo.svelte";
    import UICLogo from "../shared/icons/UICLogo.svelte";
</script>
<style>
    h1 {
        font-size: 48px;
        padding-bottom: 32px;
        margin: 0px;
    }

    .content-container {
        max-width: 1024px;
        margin: auto;
    }

    .desc {
        font-size: 20px;
        text-align: justify;
        /* max-width: 512px; */
        padding-bottom: 64px;
        margin: 0px;
    }

    .intro-container {
        width: 100%;
        padding-top: 64px;
        background-color: green;
    }

    .subheader-container {
        width: 100%;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        gap: 32px;
        padding-bottom: 64px;
    }

    .subheader-container > .logo-container {
        max-width: 30%;
    }

    .socials {
        display: flex;
        align-items: center;
        gap: 32px;
    }

    .overview-container {
        height: 1024px;
    }

    li {
        line-height: 32px;
    }

    .main-page-footer {
        min-height: 512px;
        margin-top: 64px;
        display: flex;
        align-items: end;
        background-image: url("/images/chicago.webp");
        mask-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 50%);
        background-size: cover;
        
        /* temp */
        filter: grayscale(1);
    }

    .main-page-footer > div {
        width: 100%;
        display: flex;
        justify-content: space-between;
        line-height: 24px;
    }

    .main-page-footer > div > div {
        margin: 64px;
    }

    .footer-address {
        padding-bottom: 32px;
    }

    .footer-social {
    }

    .footer-social > a {
        display: block;
        color: var(--white);
        text-align: right;
    }
</style>
<div class="intro-container">
    <div class="subheader-container content-container">
         <div>
            <h1>Linux User Group @ UIC</h1>
            <p class="desc">
                We are UIC's student-led community for Free & Open Source Software (FOSS).
                <br><br>
                LUG is a place for sharing ideas and collaborating on projects
                for the greater good of accessible and sustainable technology.
            </p>
            <div class="socials">
                <LinkButton link="#join" text="JOIN LUG" />
                <LinkSocial link="#" icon="discord" />
                <LinkSocial link="#" icon="instagram" />
                <LinkSocial link="#" icon="github" />
            </div>
        </div>
        <div class="logo-container">
            <SimpleLogo style="width: 100%" />
        </div>
    </div>
</div>
<div class="overview-container content-container">
    <div class="events-overview">
        <h2>Events</h2>
    </div>
    <div class="groups-overview">
        <h2>Groups</h2>
    </div>
    <div class="projects-overview">
        <h2>Projects</h2>
    </div>
</div>
<div class="join-container content-container">
    <h2 id="join">How to Join</h2>
    <p>The best ways to stay in contact with us and to be an active member are to:</p>
    <ul>
        <li>Join our <a href="https://discord.gg/Edrb8ASX7m">Discord Server</a></li>
        <li>Subscribe to our <a href="mailto:listserv@uic.edu?body=SUBSCRIBE%20LUG">Listserv</a></li>
        <li>Show up in person to our office in <a href="https://osm.org/go/ZUfI2rRnd--?way=1164024531">CDRLC</a> 2433</li>
        <li>Join the official <a href="https://uic.campusgroups.com/linuxuser/club_signup">CampusGroups RSO</a></li>
    </ul>
    <p>Typically, there is someone in the office from 9:00 AM to 5:00 PM.</p>
</div>
<div class="events-container">

</div>
<div class="articles-container">

</div>
<div class="main-page-footer">
    <div>
        <div>
            <div class="footer-address">
                CDRLC 2433<br>
                Computer Design Research and Learning Center<br>
                University of Illinois Chicago<br>
                <br>
                900 W Taylor Street<br>
                Chicago, IL 60607
            </div>
            <div>
                <SimpleLogo style="height: 64px; margin-right: 16px" />
                <UICLogo style="height: 64px" />
            </div>
        </div>
        <div class="footer-social">
            Find us on
            <a href="#">GitHub</a>
            <a href="#">Discord</a>
            <a href="#">Instagram</a>
        </div>
    </div>
</div>