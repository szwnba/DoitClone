.class Lim/doit/pro/activity/SelectContactsActivity$5;
.super Ljava/lang/Object;
.source "SelectContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SelectContactsActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SelectContactsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SelectContactsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SelectContactsActivity$5;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$5;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$5(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Contact;

    .line 119
    .local v0, "contact":Lim/doit/pro/model/Contact;
    invoke-virtual {v0}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "userId":Ljava/lang/String;
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$5;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$3(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 121
    .local v1, "isSelected":Z
    if-eqz v1, :cond_0

    .line 122
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$5;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$3(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    :goto_0
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$5;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$6(Lim/doit/pro/activity/SelectContactsActivity;)Landroid/widget/ListView;

    move-result-object v4

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, p3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 127
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$5;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$7(Lim/doit/pro/activity/SelectContactsActivity;)V

    .line 128
    return-void

    .line 124
    :cond_0
    iget-object v3, p0, Lim/doit/pro/activity/SelectContactsActivity$5;->this$0:Lim/doit/pro/activity/SelectContactsActivity;

    invoke-static {v3}, Lim/doit/pro/activity/SelectContactsActivity;->access$3(Lim/doit/pro/activity/SelectContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method
