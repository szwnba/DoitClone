.class abstract Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;
.super Landroid/widget/LinearLayout;
.source "DHomeMenuList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    iput-object p1, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;->this$1:Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;

    .line 198
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    return-void
.end method


# virtual methods
.method public abstract setViewContent(Lim/doit/pro/model/Box;)V
.end method
