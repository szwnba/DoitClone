.class Lim/doit/pro/activity/SelectContactsActivity$3;
.super Ljava/lang/Object;
.source "SelectContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SelectContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SelectContactsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SelectContactsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SelectContactsActivity$3;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v2, "selectedContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$3;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$1(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 312
    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$3;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-virtual {v3}, Lim/doit/pro/activity/SelectContactsActivity;->finish()V

    .line 320
    :goto_1
    return-void

    .line 304
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Contact;

    .line 305
    .local v0, "contact":Lim/doit/pro/model/Contact;
    iget-object v4, p0, Lim/doit/pro/activity/SelectContactsActivity$3;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v4}, Lim/doit/pro/activity/SelectContactsActivity;->access$2(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 308
    iget-object v4, p0, Lim/doit/pro/activity/SelectContactsActivity$3;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v4}, Lim/doit/pro/activity/SelectContactsActivity;->access$3(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v0    # "contact":Lim/doit/pro/model/Contact;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 317
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "contacts"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 318
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$3;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lim/doit/pro/activity/SelectContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 319
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$3;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-virtual {v3}, Lim/doit/pro/activity/SelectContactsActivity;->finish()V

    goto :goto_1
.end method
