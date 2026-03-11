'use strict';
'require view';
'require uci';

return view.extend({
	load: function() {
		return uci.load('myfm');
	},

	render: function() {
		var title = uci.get('myfm', 'main', 'title') || 'My File Manager by ajiputra';
		var webdir = '/myfm/';

		return E('div', { 'class': 'cbi-map' }, [
			E('h2', {}, title),
			E('div', { 'class': 'cbi-section' }, [
				E('p', {}, 'My File Manager sudah terpasang.'),
				E('p', {}, 'Developer: ajiputra'),
				E('p', {}, [
					E('a', {
						'href': webdir,
						'target': '_blank',
						'rel': 'noopener noreferrer',
						'class': 'btn cbi-button cbi-button-action'
					}, 'Buka File Manager')
				])
			])
		]);
	}
});
