.class Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;
.super Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;
.source "DHomeMenuList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoxViewHolder"
.end annotation


# instance fields
.field public countOverdueTV:Landroid/widget/TextView;

.field public countTotalTV:Landroid/widget/TextView;

.field public countWrap:Landroid/widget/LinearLayout;

.field public dividerCount:Landroid/view/View;

.field final synthetic this$1:Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    iput-object p1, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->this$1:Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;

    .line 212
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter;Landroid/content/Context;)V

    .line 213
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 214
    const v1, 0x7f0300a4

    .line 213
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 215
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->nameTV:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0b01b6

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->countWrap:Landroid/widget/LinearLayout;

    .line 217
    const v0, 0x7f0b01b7

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->countOverdueTV:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0b0125

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->dividerCount:Landroid/view/View;

    .line 219
    const v0, 0x7f0b01b8

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->countTotalTV:Landroid/widget/TextView;

    .line 220
    return-void
.end method


# virtual methods
.method public setViewContent(Lim/doit/pro/model/Box;)V
    .locals 5
    .param p1, "box"    # Lim/doit/pro/model/Box;

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 224
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->nameTV:Landroid/widget/TextView;

    .line 226
    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getIconResId()I

    move-result v1

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getCountTotal()I

    move-result v0

    if-lez v0, :cond_1

    .line 229
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->countWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->countTotalTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getCountTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->dividerCount:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getCountOverdue()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->countOverdueTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->countOverdueTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lim/doit/pro/model/Box;->getCountOverdue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->dividerCount:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->countOverdueTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/DHomeMenuList$MenuListAdapter$BoxViewHolder;->countWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
