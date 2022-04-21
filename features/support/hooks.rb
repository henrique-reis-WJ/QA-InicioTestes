After do |scenario|
    Dir.mkdir('Data') unless Dir.exist?('Data')
    Dir.mkdir('Data/reports') unless Dir.exist?('Data/reports')
    image_name = "Data/reports/img/imagem-1.png"
    temp_shot = page.save_screenshot(image_name)
    file_shot = File.open(temp_shot, "rb").read
    final_shot = Base64.encode64(file_shot)
    embed(temp_shot, "image/png", "Evidência!")
end

at_exit do
ReportBuilder.configure do |config|
    config.json_path = 'Data/reports/report.json'
    config.report_path = 'Data/reports'
    config.report_types = [:html]
    config.report_title = 'My Results'
    config.include_images = true
    config.compress_images = false
    config.color = 'indigo'
    config.additional_info = {browser: 'Google Chrome',
                              environment: 'Luma',
                              QA: 'Henrique Ribeiro',
                              Projeto: 'Report Luma'}
  end
  
  ReportBuilder.build_report
end