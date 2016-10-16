
package 'epel-release' do 
	action:install 
end

package 'ngninx' do
	action:install
end

package 'ngninx' do
	action [:enable, :start]
end

cookbook_file "/usr/share/nginx/html/index.html" do
	source "index.html"
	mode "0644"
end

