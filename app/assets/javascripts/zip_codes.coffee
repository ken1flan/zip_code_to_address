$ ->
  $searchAddressButtons = $(".js_search_address_code")
  if $searchAddressButtons[0]
    $searchAddressButtons.keyup ->
      $codes = $(".js_search_address_code")
      if $codes[0]
        code = $codes.val()
        console.log(code)
        $.getJSON '/zip_codes/' + code, (data) ->
          if data["zip_codes"][0]
            source = []
            for zip_code in data["zip_codes"]
              source.push {
                label: "#{zip_code['code']} #{zip_code['prefecture_name']}#{zip_code['address']}",
                value: zip_code['code'],
                address: "#{zip_code['prefecture_name']}#{zip_code['address']}"
              }

            $(".js_search_address_code").autocomplete({
              source: source,
              autoFocus: true,
              delay: 500,
              minLength: 2,
              select: (e, ui) ->
                $(".js_search_address_code").val(ui.item.value)
                $(".js_search_address_target").val(ui.item.address)
              })
