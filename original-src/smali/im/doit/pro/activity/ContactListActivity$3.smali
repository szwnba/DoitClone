.class Lim/doit/pro/activity/ContactListActivity$3;
.super Ljava/lang/Object;
.source "ContactListActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ContactListActivity;->onDeleteClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ContactListActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ContactListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ContactListActivity$3;->this$0:Lim/doit/pro/activity/ContactListActivity;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 327
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity$3;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity;->access$8(Lim/doit/pro/activity/ContactListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$3;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ContactListActivity;->access$9(Lim/doit/pro/activity/ContactListActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Contact;

    .line 328
    .local v0, "contact":Lim/doit/pro/model/Contact;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/ContactDao;->delete(Lim/doit/pro/model/Contact;)V

    .line 329
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity$3;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity;->access$8(Lim/doit/pro/activity/ContactListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/activity/ContactListActivity$3;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ContactListActivity;->access$9(Lim/doit/pro/activity/ContactListActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity$3;->this$0:Lim/doit/pro/activity/ContactListActivity;

    invoke-static {v1}, Lim/doit/pro/activity/ContactListActivity;->access$2(Lim/doit/pro/activity/ContactListActivity;)Lim/doit/pro/activity/ContactListActivity$ListAdatper;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/activity/ContactListActivity$ListAdatper;->notifyDataSetChanged()V

    .line 331
    iget-object v1, p0, Lim/doit/pro/activity/ContactListActivity$3;->this$0:Lim/doit/pro/activity/ContactListActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lim/doit/pro/activity/ContactListActivity;->access$1(Lim/doit/pro/activity/ContactListActivity;I)V

    .line 332
    return-void
.end method
