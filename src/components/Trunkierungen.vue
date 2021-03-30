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
			<td><input type="text" v-model="suchanfrage.D"></td>
			<td><input type="text" v-model.number="treffer.D"></td>
			<td>-</td>
		</tr>
		<tr>
			<td>E</td>
			<td>{{ suchanfrage.A.substring(0,2) }}*</td>
			<td><input type="text" :class="{ wrong: treffer.E && treffer.E < korrekteAnzahlEundF }" v-model.number="treffer.E"></td>
			<td>&#8805; {{ korrekteAnzahlEundF }} <Hinweis hinweis="Anzahl A + Anzahl B + Anzahl C + Anzahl D" /></td>
		</tr>
		<tr>
			<td>F</td>
			<td>{{ suchanfrage.B.substring(0,5) }}*</td>
			<td><input type="text" :class="{ wrong: treffer.F && !(treffer.F >= korrekteAnzahlEundF && treffer.F < treffer.E) }" v-model.number="treffer.F"></td>
			<td>&#8805; {{ korrekteAnzahlEundF }} <Hinweis class="spaceright" hinweis="Anzahl A + Anzahl B + Anzahl C + Anzahl D" /> &#60; {{ treffer.E - 0}} <Hinweis hinweis="Anzahl E" /></td>
		</tr>
		<tr>
			<td>G</td>
			<td>{{ suchanfrage.C.substring(0,6) }}*</td>
			<td><input type="text" :class="{ wrong: treffer.G && !(treffer.G >= korrekteAnzahlG && treffer.G < treffer.F) }" v-model.number="treffer.G"></td>
			<td>&#8805; {{ korrekteAnzahlG }} <Hinweis class="spaceright" hinweis="Anzahl B + Anzahl C + Anzahl D" /> &#60; {{ treffer.F - 0 }} <Hinweis hinweis="Anzahl F" /></td>
		</tr>
		<tr>
			<td>H</td>
			<td><input type="text" v-model="suchanfrage.H"></td>
			<td><input type="text" v-model.number="treffer.H"></td>
			<td>-</td>
		</tr>
		<tr>
			<td>I</td>
			<td>{{ suchanfrage.H.substring(0,10) }}*</td>
			<td><input type="text" :class="{ wrong: treffer.I && treffer.I < treffer.H }" v-model.number="treffer.I"></td>
			<td>&#8805; {{ treffer.H - 0 }} <Hinweis hinweis="Anzahl H" /></td>
		</tr>
	</table>
</template>

<script>
import Hinweis from './Hinweis.vue'
export default {
  name: 'Trunkierungen',
	components: {
		Hinweis
	},
	data() {
		return {
			suchanfrage: {
				A: 'Johan',
				B: 'Johann',
				C: 'Johanna',
				D: 'Johannes',
				H: 'Müller-Jacquier'
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
		korrekteAnzahlEundF() {
			return this.treffer.A + this.treffer.B + this.treffer.C + this.treffer.D - 0;
		},
		korrekteAnzahlG() {
			return this.treffer.B + this.treffer.C + this.treffer.D - 0;
		},
	}
}
</script>

<style scoped>

.spaceright {
	margin-right: 13px;
}

</style>
