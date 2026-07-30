<script>
    import { onMount } from "svelte";

    let props = $props();

    let eventsList = $state([]);

    const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    const getDateText = (timestamp) => {
        const date = new Date(timestamp);
        const month = months[date.getMonth()];
        const day = date.getDate();
        return `${month} ${day}`;
    };

    onMount(async () => {
        eventsList = await (await fetch("/data/events.json")).json();
    });
</script>
<style>
    .calendar {
        margin-top: 32px;
        width: calc(100%);
        background-color: green;
    }

    .calendar-container {
        display: grid;
        gap: 1px;
        grid-template-columns: repeat(4, 1fr);
    }

    .event {
        padding: 8px;
        background-color: yellow;
    }

    .event-date {
        color: grey;
    }

    .event-title {
        font-size: 20px;
    }

    .event-subtitle {
        color: grey;
    }

    .event-host {
        float: right;
        font-size: 14px;
    }

    .no-events-label {
        margin: 32px;
    }
</style>
<div class="calendar">
    <div class="calendar-container">
        {#if eventsList.length == 0}
            <div class="no-events-label">No events.</div>
        {:else}
            {#each eventsList as event}
                {#if event.timestamp > Date.now()}
                    <div class="event">
                        <div class="event-date">{getDateText(event.timestamp)} | {event.time}</div>
                        <div class="event-title">{event.title}</div>
                        <div class="event-subtitle">{event.subtitle}</div>
                        <div class="event-host">{event.host}</div>
                    </div>
                {/if}
            {/each}
        {/if}
    </div>
</div>