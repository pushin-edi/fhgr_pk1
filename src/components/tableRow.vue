<template>
    <tr>
        <td>{{ zeilenNr }}</td>
        <td><input v-model="term" placeholder="Suchbegriff.."></td>
        <td>{{ hits }}</td>
        <td>{{ korrAnzahl }}</td>
    </tr>
</template>
<script>
export default {
    name: 'tableRow',
    props:{
        zeilenNr: String,
            term: String,
            hits: {
                type:Number,
                default: 0
                },
            korrAnzahl: Number,
    },
    methods:{
        display: function(){
            console.log("display function called")
             this.korrAnzahl = this.hits
             return this.korrAnzahl
         },
        // and: function(){
        //     return this.hits
        // },
    }
}
</script>
<style scoped>
    td{
        padding: 1rem;
        border: 1px solid black;
    }
</style>