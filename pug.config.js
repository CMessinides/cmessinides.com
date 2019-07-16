const fs = require("fs");

const locals = {};
const dataFiles = ["site", "projects"];

for (let i = 0; i < dataFiles.length; i++) {
	const key = dataFiles[i];
	locals[key] = JSON.parse(
		fs.readFileSync(`./src/data/${key}.json`).toString()
	);
}

locals.projects.findByHref = function(pattern) {
	return this.find(project => {
		const matches = project.href.match(pattern);
		return Boolean(matches[0]);
	});
};

module.exports = { locals };
