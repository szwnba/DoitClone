.class Lim/doit/pro/ui/component/DHomeMenuList$1;
.super Ljava/lang/Object;
.source "DHomeMenuList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/DHomeMenuList;-><init>(Landroid/app/Activity;Landroid/widget/ListView;Lim/doit/pro/ui/component/DHomeMenuList$OnHomeMenuListListener;)V
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
.field final synthetic this$0:Lim/doit/pro/ui/component/DHomeMenuList;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/DHomeMenuList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/DHomeMenuList$1;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 57
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lim/doit/pro/ui/component/DHomeMenuList$1;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v1}, Lim/doit/pro/ui/component/DHomeMenuList;->access$0(Lim/doit/pro/ui/component/DHomeMenuList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Box;

    .line 58
    .local v0, "box":Lim/doit/pro/model/Box;
    iget-object v1, p0, Lim/doit/pro/ui/component/DHomeMenuList$1;->this$0:Lim/doit/pro/ui/component/DHomeMenuList;

    invoke-static {v1, v0}, Lim/doit/pro/ui/component/DHomeMenuList;->access$5(Lim/doit/pro/ui/component/DHomeMenuList;Lim/doit/pro/model/Box;)V

    .line 59
    return-void
.end method
