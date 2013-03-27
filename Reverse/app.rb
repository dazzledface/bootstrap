require "rubygems"
require "sinatra"

get '/' do
  "
  <html>

   <body>
        <header>
            <banner>
        <h1>awesome blog</h1>

    <style>
        banner {
        max-width: 500px;
        max-height: 150px;
        border-width: 2px;
        margin: 5px 5px 5px 5px;
        padding: 5px 5px 5px 5px;
        text-align: center;
        }

        header {
        font: 18px Tahoma, sans-serif;
        font-style: bold;
        color: black;
        }
        
        p {
        font: 14px Tahoma, sans-serif;
        }     
    </style>

    <body>
      <form action='/form' method='post'> 
        <input type='text' name='text'>
        <input type='submit'>
      </form>
    </body>
   </html>
  "
end

post '/form' do
  if params[:text].empty?
    redirect '/?error=NODATA'
  else
      "
      <html>
        <body>
          <p>
              #{params[:text]}
          </p>
          <p> 
            number of characters: #{params[:text].size.to_s}
          </p>
          <p>
             #{Time.now}
          </p>
        </body>
      </html>
     "
  end
end
  
