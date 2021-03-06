jQuery(function (e) {
    function s() {
        t || (t = !0, e(".message-form .wysiwyg-editor").ek_wysiwyg({
            toolbar: ["bold", "italic", "strikethrough", "underline", null, "justifyleft", "justifycenter", "justifyright", null, "createLink", "unlink", null, "undo", "redo"]
        }).prev().addClass("editor-style1"), e("#id-add-attachment").on("click",
        function () {
            e('<input type="file" name="attachment[]" /> <br />').appendTo("#form-attachments")
        }))
    }
    e('#inbox-tabs a[data-toggle="tab"]').on("show.bs.tab",
    function (s) {
        var t = e(s.target).data("target");
        "write" == t ? a.show_form() : "inbox" == t && a.show_list()
    }),
    e(".message-list .message-item input[type=checkbox]").removeAttr("checked"),
    e(".message-list").on("click", ".message-item input[type=checkbox]",
    function () {
        e(this).closest(".message-item").toggleClass("selected"),
        a.display_bar(this.checked ? 1 : e(".message-list input[type=checkbox]:checked").length)
    }),
    e("#id-toggle-all").removeAttr("checked").on("click",
    function () {
        this.checked ? a.select_all() : a.select_none()
    }),
    e("#id-select-message-all").on("click",
    function (e) {
        e.preventDefault(),
        a.select_all()
    }),
    e("#id-select-message-none").on("click",
    function (e) {
        e.preventDefault(),
        a.select_none()
    }),
    e("#id-select-message-read").on("click",
    function (e) {
        e.preventDefault(),
        a.select_read()
    }),
    e("#id-select-message-unread").on("click",
    function (e) {
        e.preventDefault(),
        a.select_unread()
    }),
    e(".message-item .message-star, .message-header .fa-star-o").on("click",
    function () {
        e(this).toggleClass("selected")
    }),
    e(".message-list .message-item .text").on("click",
    function () {
        e(".message-container").append('<div class="message-loading-overlay"><i class="fa-spin fa fa-spinner text-primary bigger-160"></i></div>');
        var s = e(this).closest(".message-list");
        e('#inbox-tabs a[href="#inbox"]').parent().removeClass("active"),
        setTimeout(function () {
            s.next().addClass("hide"),
            e(".message-container").find(".message-loading-overlay").remove(),
            e(".message-navbar").addClass("hide"),
            e(".message-footer").addClass("hide"),
            e("#id-message-item-navbar").removeClass("hide"),
            e(".message-content").removeClass("hide").insertAfter(s.addClass("hide")),
            e(".message-content .message-body").slimScroll({
                height: "150px",
                alwaysVisible: !0,
                touchScrollStep: 50
            })
        },
        500 + parseInt(500 * Math.random()))
    }),
    e(".btn-back-message-list").on("click",
    function (s) {
        s.preventDefault(),
        e('#inbox-tabs a[href="#inbox"]').tab("show")
    }),
    e(".btn-reply").on("click",
    function (e) {
        e.preventDefault(),
        a.show_form()
    });
    var a = {
        display_bar: function (s) {
            0 == s ? (e("#id-toggle-all").removeAttr("checked"), e("#id-message-list-navbar .message-toolbar").addClass("hide"), e("#id-message-list-navbar .message-infobar").removeClass("hide")) : (e("#id-message-list-navbar .message-infobar").addClass("hide"), e("#id-message-list-navbar .message-toolbar").removeClass("hide"))
        },
        select_all: function () {
            var s = 0;
            e(".message-item input[type=checkbox]").each(function () {
                this.checked = !0,
                e(this).closest(".message-item").addClass("selected"),
                s++
            }),
            e("#id-toggle-all").get(0).checked = !0,
            a.display_bar(s)
        },
        select_none: function () {
            e(".message-item input[type=checkbox]").removeAttr("checked").closest(".message-item").removeClass("selected"),
            e("#id-toggle-all").get(0).checked = !1,
            a.display_bar(0)
        },
        select_read: function () {
            e(".message-unread input[type=checkbox]").removeAttr("checked").closest(".message-item").removeClass("selected");
            var s = 0;
            e(".message-item:not(.message-unread) input[type=checkbox]").each(function () {
                this.checked = !0,
                e(this).closest(".message-item").addClass("selected"),
                s++
            }),
            a.display_bar(s)
        },
        select_unread: function () {
            e(".message-item:not(.message-unread) input[type=checkbox]").removeAttr("checked").closest(".message-item").removeClass("selected");
            var s = 0;
            e(".message-unread input[type=checkbox]").each(function () {
                this.checked = !0,
                e(this).closest(".message-item").addClass("selected"),
                s++
            }),
            a.display_bar(s)
        }
    };
    a.show_list = function () {
        e(".message-navbar").addClass("hide"),
        e("#id-message-list-navbar").removeClass("hide"),
        e(".message-footer").addClass("hide"),
        e(".message-footer:not()").removeClass("hide"),
        e(".message-list").removeClass("hide").next().addClass("hide")
    },
    a.show_form = function () {
        if (!e(".message-form").is(":visible")) {
            t || s();
            var a = e(".message-list");
            e(".message-container").append('<div class="message-loading-overlay"><i class="fa-spin fa fa-spinner text-primary bigger-160"></i></div>'),
            setTimeout(function () {
                a.next().addClass("hide"),
                e(".message-container").find(".message-loading-overlay").remove(),
                e(".message-list").addClass("hide"),
                e(".message-footer").addClass("hide"),
                e(".message-form").removeClass("hide").insertAfter(".message-list"),
                e(".message-navbar").addClass("hide"),
                e("#id-message-new-navbar").removeClass("hide"),
                e(".message-form .wysiwyg-editor").empty(),
                e(".message-form").get(0).reset()
            },
            300 + parseInt(300 * Math.random()))
        }
    };
    var t = !1;
    e(function () {
        e(".massage-list").on("keyup",
        function () {
            var s = new RegExp(e(this).val(), "i");
            e(".message-item").hide(),
            e(".message-item").filter(function () {
                return s.test(e(this).text())
            }).show()
        })
    })
});