<template>

	<table>
		<tr>
			<th></th>
			<th>Suchanfrage</th>
			<th>Anzahl Treffer</th>
			<th>Korrekte Anzahl</th>
		</tr>
		<tr>
			<td>A</td>
			<td><input type="text" v-model="suchanfrage.A"></td>
			<td><input type="text" v-model.number="treffer.A"></td>
			<td>-</td>
		</tr>
		<tr>
			<td>B</td>
			<td><input type="text" v-model="suchanfrage.B"></td>
			<td><input type="text" v-model.number="treffer.B"></td>
			<td>-</td>
		</tr>
		<tr>
			<td>C</td>
			<td><input type="text" v-model="suchanfrage.C"></td>
			<td><input type="text" v-model.number="treffer.C"></td>
			<td>-</td>
		</tr>
		<tr>
			<td>D</td>
			<td>{{ suchanfrage.A }} AND {{ suchanfrage.B }}</td>
			<td><input type="text" :class="{ wrong: treffer.D > calcAND(treffer.A, treffer.B) }" v-model.number="treffer.D"></td>
			<td>&#8804; {{ calcAND(treffer.A, treffer.B) }} <Hinweis hinweis="Kleinster Wert von A oder B" /></td>
		</tr>
		<tr>
			<td>E</td>
			<td>{{ suchanfrage.A }} AND {{ suchanfrage.C }}</td>
			<td><input type="text" :class="{ wrong: treffer.E > calcAND(treffer.A, treffer.C) }" v-model.number="treffer.E"></td>
			<td>&#8804; {{ calcAND(treffer.A, treffer.C) }} <Hinweis hinweis="Kleinster Wert von A oder C" /></td>
		</tr>
		<tr>
			<td>F</td>
			<td>{{ suchanfrage.B }} AND {{ suchanfrage.C }}</td>
			<td><input type="text" :class="{ wrong: treffer.F > calcAND(treffer.B, treffer.C) }" v-model.number="treffer.F"></td>
			<td>&#8804; {{ calcAND(treffer.B, treffer.C) }} <Hinweis hinweis="Kleinster Wert von B oder C" /></td>
		</tr>
		<tr>
			<td>G</td>
			<td>{{ suchanfrage.A }} OR {{ suchanfrage.B }}</td>
			<td><input type="text" :class="{ wrong: treffer.G != korrekteAnzahlG && treffer.G }" v-model.number="treffer.G"></td>
			<td>= {{ korrekteAnzahlG }} <Hinweis hinweis="Anzahl A + Anzahl B - Anzahl D" /></td>
		</tr>
		<tr>
			<td>H</td>
			<td>({{ suchanfrage.A }} AND {{ suchanfrage.B }}) OR {{ suchanfrage.C }}</td>
			<td><input type="text" :class="{ wrong: treffer.H != korrekteAnzahlH && treffer.H}" v-model.number="treffer.H"></td>
			<td>= {{ korrekteAnzahlH }} <Hinweis hinweis="Anzahl D + Anzahl C - Anzahl E - Anzahl F" /></td>
		</tr>
		<tr>
			<td>I</td>
			<td>{{ suchanfrage.A }} AND {{ suchanfrage.B }} OR {{ suchanfrage.C }}</td>
			<td><input type="text" :class="{ wrong: treffer.I != korrekteAnzahlI && treffer.I}" v-model.number="treffer.I"></td>
			<td>= {{ korrekteAnzahlI }} <Hinweis hinweis="Normalerweise Anzahl H" /></td>
		</tr>
		<tr>
			<td>J</td>
			<td>{{ suchanfrage.A }} AND ({{ suchanfrage.B }} OR {{ suchanfrage.C }})</td>
			<td><input type="text" :class="{ wrong: treffer.J != korrekteAnzahlJ && treffer.J}" v-model.number="treffer.J"></td>
			<td>= {{ korrekteAnzahlJ }} <Hinweis hinweis="Anzahl D + Anzahl E - Anzahl F" /></td>
		</tr>
	</table>

</template>


<script>
import Hinweis from './Hinweis.vue'
export default {
  name: 'BoolscheOperatoren',
  components: {
		Hinweis	
  },
	data() {
		return {
			suchanfrage: {
				A: 'Haus',
				B: 'Boot',
				C: 'Wasser'
			},
			treffer: {
				A: '',
				B: '',
				C: '',
				D: '',
				E: '',
				F: '',
				G: '',
				H: '',
				I: '',
				J: ''
			}
		}
	},
	computed: {
		korrekteAnzahlG() {
			return this.treffer.A + this.treffer.B - this.treffer.D;
		},
		korrekteAnzahlH() {
			return this.treffer.C + this.treffer.D - this.treffer.E - this.treffer.F;
		},
		korrekteAnzahlI() {
			return this.treffer.H - 0; // -0 forces type-conversion
		},
		korrekteAnzahlJ() {
			return this.treffer.D + this.treffer.E - this.treffer.F;
		}
	},
	methods: {
		calcAND(num1, num2) {
			return Math.min(num1, num2);
		}
	}
}
</script>


<style scoped>


</style>
