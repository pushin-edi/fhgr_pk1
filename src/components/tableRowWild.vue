<template>
    <tr>
        <td>{{ zeilenNr }}</td>
        <td>{{ findSubstring(inputTermWildA, inputTermWildB, inputTermWildC) }}*</td>
        <td>{{ calc }}</td>
        <td>{{ calc }}</td>
    </tr>
</template>
<script>
export default{
    name : 'tableRowWild',
    data:function(){
        return{
            zeilenNr : this.rownum,
        }
    },
    props:{
        rownum : String,
        inputTermWildA: {
            type:String,
            default: "Suchbegriff A"
        },
        inputTermWildB: {
            type:String,
            default: "Suchbegriff B"
        },
        inputTermWildC: {
            type:String,
            default: "Suchbegriff C"
        },
        inputHitWildA: Number,
        inputHitWildB: Number,
        inputHitWildC: Number,
    },
    methods:{
        findSubstring: function(param1, param2, param3){
            var substring = "";
            for (var i = 0; i<Math.min(param1.length,param2.length,param3.length); i++){
                if(param1[i]==param2[i] && param1[i] == param3[i]){
                    substring += param1[i];
                }
            }
            return substring; 
        }
    },
    computed:{
        calc:function(){
            console.log("function fired");
            return Math.max(this.inputHitWildA, this.inputHitWildB, this.inputHitWildC);
        }
    }

}
</script>
<style scoped>

</style>