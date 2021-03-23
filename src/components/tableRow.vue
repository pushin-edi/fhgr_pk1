<template>
    <tr>
        <td>{{ zeilenNr }}</td>
        <td>
            <span v-if="bool1 != ''"> 
                <span v-if="inputTermA != 'Suchbegriff A'"> {{inputTermA}}</span>
                {{bool1}}
            </span>
            <span v-if="inputTermB != 'Suchbegriff B'"> {{inputTermB}} </span>
            <span v-if="bool2 != ''">
                <span v-if="inputTermC != 'Suchbegriff C'">{{bool2}} {{inputTermC}}</span>
            </span>
            </td>
        <td>{{ calc }}</td>
        <td>{{ korrAnzahl }} {{ calc }}</td>
    </tr>
</template>
<script>
export default {
    name: 'tableRow',
    data:function(){
        return{
            zeilenNr : this.letter,
            korrAnzahl: this.comparer,
        }
    },
    props:{
        letter: String,
        inputTermA: {
            type:String,
            default: "Suchbegriff A"
        },
        inputTermB: {
            type:String,
            default: "Suchbegriff B"
        },
        inputTermC: {
            type:String,
            default: "Suchbegriff C"
        },
        inputHitA: Number,
        inputHitB: Number,
        inputHitC: Number,
        bool1: String,
        bool2: String,
        comparer: String
    },
    methods:{

    },
    computed:{
        min:function(){
            console.log("function fired");
            if (this.bool1 != "" && this.inputHitC == 0){
                return Math.min(this.inputHitA,this.inputHitB);
            }
            else{
                return Math.min(this.inputHitA,this.inputHitB,this.inputHitC);
            }
        },
        max:function(){
            console.log("function fired");
            return Math.max(this.inputHitA,this.inputHitB,this.inputHitC);
        },
        calc: function(){
            // case only bool1 set
            if (this.bool1 != "" && this.bool2 == ""){
                if (this.bool1 == "AND"){
                    return Math.min(this.inputHitA,this.inputHitB);
                }
                else if (this.bool1 == "OR"){
                    return Math.max(this.inputHitA,this.inputHitB);
                }
                else{
                    return false;
                }
            }
            // case only bool2 set
            else if (this.bool1 == "" && this.bool2 != ""){
                if (this.bool2 == "AND"){
                    return Math.min(this.inputHitB,this.inputHitC);
                }
                else if (this.bool2 == "OR"){
                    return Math.max(this.inputHitB,this.inputHitC);
                }
                else{
                    return false;
                }
            }
            // case bool1 & bool2  set
            else if (this.bool1 != "" && this.bool2 != ""){
                if (this.bool1 == "AND" && this.bool2 == "AND"){
                    return Math.min(this.inputHitA,this.inputHitB,this.inputHitC);
                }
                else if (this.bool1 == "AND" && this.bool2 == "OR"){
                    return Math.min(this.inputHitA,Math.max(this.inputHitB,this.inputHitC));
                }
                else if (this.bool1 == "OR" && this.bool2 == "AND"){
                    return Math.min(this.inputHitA,Math.max(this.inputHitB,this.inputHitC));
                }
                else if (this.bool1 == "OR" && this.bool2 == "OR"){
                    return Math.max(this.inputHitA,this.inputHitB,this.inputHitC);
                }
                else{
                    return false;
                }
            }
            // case bool1 & bool2 empty
            else{
                return false;
            }
        }
    }
}
</script>
<style scoped>
    td{
        padding: 1rem;
        border: 1px solid black;
    }
</style>