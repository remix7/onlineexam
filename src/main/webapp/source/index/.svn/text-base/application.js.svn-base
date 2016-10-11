(function() {
  var formSubscribe, loadApplication, photoSection, svgInjector, worksFilter;

  loadApplication = function() {
    var styles;
    styles = ["background: #7b77c9", "color: white", "display: block", "padding: 20px 20px 20px 20px", "text-align: center", "font-weight: normal", "font-size: 20px", "line-height: 60px"].join(";");
    console.log('%c Lithium Loaded :)', styles, 'For usage visit: https://github.com/owldesign/3.-Lithium');
    $(svgInjector);
    $(worksFilter);
    $(photoSection);
    $(formSubscribe);
    $('.arrow-down').on('click', function(e) {
      e.preventDefault();
      return $("html,body").animate({
        scrollTop: $("#page-work").offset().top
      });
    });
    if (Modernizr.touch) {
      return FastClick.attach(document.body);
    }
  };

  svgInjector = function() {
    var mySVGsToInject;
    mySVGsToInject = document.querySelectorAll('img.inject-me');
    return SVGInjector(mySVGsToInject);
  };

  worksFilter = function() {
    var $btns, $filter, $grid, $mobileFilterBtn, $sizer, $workItem;
    $filter = $('#work-filter');
    $grid = $('#work-grid');
    $sizer = $grid.find('.shuffle__sizer');
    $workItem = $('.work-item');
    $mobileFilterBtn = $('.mobile-filter-select');
    $mobileFilterBtn.on('click', function(e) {
      e.preventDefault();
      $filter.slideToggle();
      return $(this).toggleClass('opened');
    });
    $(window).resize(function() {
      if ($(window).width() > 768) {
        if ($filter.is(':visible')) {

        } else {
          return $filter.slideDown();
        }
      } else {
        $filter.slideUp();
        return $mobileFilterBtn.removeClass('opened');
      }
    });
    $workItem.on('click', function() {
      var url;
      url = $(this).data('url');
      return window.location.href = url;
    });
    $grid.shuffle({
      itemSelector: $workItem,
      sizer: $sizer
    });
    $btns = $filter.children();
    return $btns.on('click', function(e) {
      var $this, group, isActive;
      e.preventDefault();
      $this = $(this);
      isActive = $this.hasClass('active');
      if ($this.hasClass('active')) {
        return false;
      } else {
        group = (isActive ? 'all' : $this.data('group'));
        if (!isActive) {
          $('#work-filter .active').removeClass('active');
        }
        $this.toggleClass('active');
        return $grid.shuffle('shuffle', group);
      }
    });
  };

  formSubscribe = function() {
    var form, formMessages, hasHtml5Validation;
    form = $('#subscribe');
    formMessages = $('.form-result');
    hasHtml5Validation = function() {
      return typeof document.createElement("input").checkValidity === "function";
    };
    if (hasHtml5Validation()) {
      return form.submit(function(e) {
        var formData;
        if (!this.checkValidity()) {
          e.preventDefault();
          $(this).addClass("invalid");
          return $("#status").html("invalid");
        } else {
          $(this).removeClass("invalid");
          e.preventDefault();
          formData = $(form).serialize();
          return $.ajax({
            type: "POST",
            url: $(form).attr("action"),
            data: formData
          }).done(function(response) {
            $(formMessages).removeClass("error");
            $(formMessages).addClass("success");
            $(formMessages).text('You have successfully subscribed!');
            return $("#email").val("");
          }).fail(function(data) {
            $(formMessages).removeClass("success");
            $(formMessages).addClass("error");
            if (data.responseText !== "") {
              return $(formMessages).text(data.responseText);
            } else {
              return $(formMessages).text("Oops! An error occured please check your email address.");
            }
          });
        }
      });
    }
  };

  photoSection = function() {
    var $photoItem;
    $photoItem = $('.photo-item');
    return $photoItem.on('click', function() {
      var url;
      url = $(this).data('url');
      return window.location.href = url;
    });
  };

  $(loadApplication);

}).call(this);
