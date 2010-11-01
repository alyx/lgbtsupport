package lgbtsupport;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/chat' => sub {
	template 'chat';
};

get '/community' => sub {
	template 'community';
};

get '/local' => sub {
	template 'local';
};

get '/news' => sub {
	template 'news';
};

get '/about' => sub {
	template 'about';
};

get qr{.*} => sub {
        status 'not_found';
        template '404', { path => request->path };
};

true;
