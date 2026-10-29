export default function (eleventyConfig) {
	eleventyConfig.addPassthroughCopy("css");
	eleventyConfig.addPassthroughCopy("images");
	eleventyConfig.addPassthroughCopy("favicon.ico");
	eleventyConfig.addPassthroughCopy("CNAME");
};
