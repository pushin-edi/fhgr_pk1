<template>
    <tr>
        <td>{{ zeilenNr }}</td>
        <td>zB. {{ input }}</td>
        <td>{{ treffer }}</td>
        <td>{{ korrAnzahl }}</td>
    </tr>
</template>
<script>
export default {
    name: 'tableRow',
    props:{
        zeilenNr: String,
        input: String,
        treffer: Number,
        korrAnzahl: Number,
    }
}
</script>
<style scoped>
    td{
        padding: 1rem;
        border: 1px solid black;
    }
</style>