module.exports = function (eleventyConfig) {
	eleventyConfig.addPassthroughCopy("site/assets")
	eleventyConfig.addPassthroughCopy("site/projects/*/assets/**")

	return {		
		dir: {
			input: "site",
			output: "dist"
		}
	}
}
