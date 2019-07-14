const fs = require("fs");

const projects = JSON.parse(
	fs.readFileSync("./src/data/projects.json").toString()
);

projects.byCategory = projects.reduce((categoryMap, project) => {
	const { category } = project;
	if (!categoryMap[category]) categoryMap[category] = [];
	categoryMap[category].push(project);
	return categoryMap;
}, {});

module.exports = {
	locals: {
		projects
	}
};
