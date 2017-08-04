After do |scenario|
    @file_name = scenario.name.gsub(' ', '_')
    @target = "results/shots/#{@file_name.downcase!}.png"

    # if scenario.failed?
        page.save_screenshot(@target)
        embed(@target, 'image/png', 'Clique aqui para ver a evidência')
    # end
end
