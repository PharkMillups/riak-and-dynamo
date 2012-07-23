# this file does cocaine

comment_block, document = false, []
File.open('dynamo.js').each do |line|
  line.strip!
  comment_line = line =~ /^\/\//
  line = line.sub(/^\/\//, '').strip
  document << {:comments => [], :doc => []} if comment_line && !comment_block
  if comment_block = comment_line
    document.last[:comments] << line
  else
    document.last[:doc] << ((line.length == 0 && document.last[:doc].length > 0) ? '</p><p>' : line)
  end
end

File.open('docs/dynamo.html', 'w+') do |f|
  f.write <<-HTML
  <!DOCTYPE html>
  <html>
    <head>
      <title>Dynamo</title>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" media="all" href="docco.css" />
    </head>
    <body>
      <div id="container">
      <div id="background"></div>
      <table cellpadding="0" cellspacing="0">
        <thead>
          <tr>
            <th class="docs">
              <h1>dynamo.js</h1>
            </th>
            <th class="code"></th>
          </tr>
        </thead>
        <tbody>
  HTML
  document.each_with_index do |rows, index|
    f.write "<tr id=\"section-#{index}\">"
    f.write "<td class=\"docs\">"
    f.write "<div class=\"pilwrap\"><a class=\"pilcrow\" href=\"#section-#{index}\">&#182;</a></div>"
    f.write "<p>#{rows[:comments].join("\n")}</p>"
    f.write "</td>"
    f.write "<td class=\"code\">"
    f.write "<p>#{rows[:doc].join("\n")}</p>"
    f.write "</td>"
  end
  f.write <<-HTML
        </tbody>
      </table>
      </div>
    </body>
  </html> 
  HTML
end