.class Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$TextViewHolder;
.super Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;
.source "DHomeMenuList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    iput-object p1, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$TextViewHolder;->this$1:Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;

    .line 248
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;Landroid/content/Context;)V

    .line 249
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 250
    const v1, 0x7f0300a5

    .line 249
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 251
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$TextViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$TextViewHolder;->nameTV:Landroid/widget/TextView;

    .line 252
    return-void
.end method


# virtual methods
.method public setViewContent(Lim/doit/pro/model/Box;)V
    .locals 2
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    .line 256
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$TextViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    return-void
.end method
