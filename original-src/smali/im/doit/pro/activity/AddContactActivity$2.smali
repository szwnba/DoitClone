.class Lim/doit/pro/activity/AddContactActivity$2;
.super Ljava/lang/Object;
.source "AddContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AddContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AddContactActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AddContactActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AddContactActivity$2;->this$0:Lim/doit/pro/activity/AddContactActivity;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v3, p0, Lim/doit/pro/activity/AddContactActivity$2;->this$0:Lim/doit/pro/activity/AddContactActivity;

    invoke-static {v3}, Lim/doit/pro/activity/AddContactActivity;->access$0(Lim/doit/pro/activity/AddContactActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "email":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmail(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lim/doit/pro/model/User;->getLowerEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const v3, 0x7f0c0250

    invoke-static {v3}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v3, v1}, Lim/doit/pro/db/persist/ContactDao;->isEmailExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    const v3, 0x7f0c024b

    invoke-static {v3}, Lim/doit/pro/utils/ToastUtils;->show(I)V

    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Lim/doit/pro/model/Contact;

    invoke-direct {v0}, Lim/doit/pro/model/Contact;-><init>()V

    .line 103
    .local v0, "contact":Lim/doit/pro/model/Contact;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lim/doit/pro/model/Contact;->setUuid(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Lim/doit/pro/model/Contact;->setEmail(Ljava/lang/String;)V

    .line 105
    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 107
    .local v2, "name":Ljava/lang/String;
    const v3, 0x7f0a0017

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    .line 106
    invoke-static {v2, v3}, Lim/doit/pro/utils/StringUtils;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lim/doit/pro/model/Contact;->setName(Ljava/lang/String;)V

    .line 108
    const-string v3, "waiting"

    invoke-virtual {v0, v3}, Lim/doit/pro/model/Contact;->setStatus(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v3, v0}, Lim/doit/pro/db/persist/ContactDao;->createAndSaveLog(Lim/doit/pro/model/Contact;)V

    .line 110
    iget-object v3, p0, Lim/doit/pro/activity/AddContactActivity$2;->this$0:Lim/doit/pro/activity/AddContactActivity;

    invoke-virtual {v3}, Lim/doit/pro/activity/AddContactActivity;->finish()V

    goto :goto_0
.end method
