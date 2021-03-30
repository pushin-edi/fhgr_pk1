<template>
	<div class="hinweis"
		@mouseover="hover = true"
		@mouseleave="hover = false"
		>
		<span>?</span>
		<p v-if="hover">{{ hinweis }}</p>
	</div>
</template>


<script>
export default {
  name: 'BoolscheOperatoren',
	data() {
		return {
			hover: false
		}
	},
	props: {
		hinweis: String
	}
}
</script>

<style scoped>
.hinweis {
	display: inline;	
	position: relative;
	margin-left: 5px;
}

.hinweis span {
	background: #4b92a4;
	color: white;
	font-weight: bold;
	font-size: 13px;
	text-align: center;
	border-radius: 100%;
	display: inline-block;
	width: 17px;
	height: 17px;
	transform: translateY(-1px);
}

.hinweis p {
	background: #4b92a4;
	color: white;
	padding: 10px 12px;
	width: 180px;
	left: 10px;
	top: 0;
	margin: 0 0 0 20px;
	position: absolute;
	z-index: 9999;
}
</style>

