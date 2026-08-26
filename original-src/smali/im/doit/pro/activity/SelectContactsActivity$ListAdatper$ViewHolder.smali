.class Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;
.super Landroid/widget/RelativeLayout;
.source "SelectContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

.field public bottomDivider:Landroid/view/View;

.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    iput-object p1, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->this$1:Lim/doit/pro/activity/SelectContactsActivity$ListAdatper;

    .line 266
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 267
    const v0, 0x7f030087

    invoke-static {p2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 268
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedAvatarView;

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 269
    const v0, 0x7f0b0172

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->nameTV:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f0b0166

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->bottomDivider:Landroid/view/View;

    .line 271
    return-void
.end method


# virtual methods
.method public setViewContent(Lim/doit/pro/model/Contact;)V
    .locals 3
    .param p1, "contact"    # Lim/doit/pro/model/Contact;

    .prologue
    .line 274
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "passed"

    if-ne v1, v2, :cond_1

    .line 281
    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setEnabled(Z)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lim/doit/pro/activity/SelectContactsActivity$ListAdatper$ViewHolder;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setEnabled(Z)V

    goto :goto_0
.end method
