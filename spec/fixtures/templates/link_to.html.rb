link_to('example', 'http://example1.org') +
  link_to('http://example2.org') +
  link_to('http://example3.org') { 'Hello World' } +
  link_to('http://example4.org') do
    image_tag('http://example.org/sample.jpg')
  end +
  link_to('http://example5.org') { image_tag('sample.jpg') }
