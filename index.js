const hapi = require('hapi');
const server = hapi.server({    
    port: 3000,    
    host: 'localhost'
});
var promise = require('bluebird');

var options = {
  // Initialization Options
  promiseLib: promise
};

var pgp = require('pg-promise')(options);
var connectionString = 'postgres://localhost:5432/blogs';
var db = pgp(connectionString);

server.route({
	method: 'GET',        // define the method this route will handle
	path: '/', // this is how you capture route parameters in Hapi
	handler: function(req, h) { // request handler method
		return 'Welcome to your personal website'; // reply with text.
	}
});

server.route({
	method: 'GET',        // define the method this route will handle
	path: '/blogs', // this is how you capture route parameters in Hapi
    handler: function(req, h) { // request handler method
       return db.any('SELECT * FROM blogs')
        .then(function(data) {
            return data;
        })
        .catch(function(error) {
            // error;
        });
		// return 'Blogs are returned'; // reply with text.
	}
});

server.route({
    method: 'GET',        // define the method this route will handle
	path: '/blogs/{title}', // this is how you capture route parameters in Hapi
    handler: function(req, h) { // request handler method

        return db.one('SELECT * FROM blogs WHERE title = $1', req.params.title).then((data) => {
            return data;
        });
	}
});

server.route({
    method: 'POST',        // define the method this route will handle
	path: '/blog', // this is how you capture route parameters in Hapi
    handler: function(req, h) { // request handler method  
        
        req.body.created_at = Date.now();
        
        return db.none('insert into blogs(title, type, content, created_by, created_at)' +
        'values(${title}, ${type}, ${content}, ${created_by}, ${created_at})',
        req.body)

        .then(function () {
            return {
                status: 'success',
                message: `Created the blog  ${req.body.title}`
                };
            });
	}
});

const bootUpServer = async () => {    
    await server.start();    
    console.log(`Server is running at ${server.info.uri}`);
    process.on('unhandledRejection', (err) => {       
            console.log(err); 
            process.exit(1);    
    })
}

bootUpServer();