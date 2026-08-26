.class Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;
.super Landroid/widget/RelativeLayout;
.source "TaskDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentViewHolder"
.end annotation


# instance fields
.field private authTV:Landroid/widget/TextView;

.field private avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

.field private contentTV:Landroid/widget/TextView;

.field private postTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 810
    iput-object p1, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->this$1:Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter;

    .line 811
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 812
    const v0, 0x7f03007d

    invoke-static {p2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 814
    const v0, 0x7f0b016e

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DRoundedAvatarView;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    .line 815
    const v0, 0x7f0b016f

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->authTV:Landroid/widget/TextView;

    .line 816
    const v0, 0x7f0b0170

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->postTV:Landroid/widget/TextView;

    .line 817
    const v0, 0x7f0b0171

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->contentTV:Landroid/widget/TextView;

    .line 818
    return-void
.end method


# virtual methods
.method public setViewContent(Lim/doit/pro/model/TaskComment;)V
    .locals 6
    .param p1, "taskComment"    # Lim/doit/pro/model/TaskComment;

    .prologue
    .line 821
    invoke-virtual {p1}, Lim/doit/pro/model/TaskComment;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "author":Ljava/lang/String;
    const/4 v2, 0x0

    .line 824
    .local v2, "avatar":Landroid/graphics/Bitmap;
    const-string v1, ""

    .line 825
    .local v1, "authorName":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 826
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 827
    const v4, 0x7f0c01a9

    invoke-static {v4}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 839
    :goto_0
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->avatarView:Lim/doit/pro/ui/component/DRoundedAvatarView;

    invoke-virtual {v4, v2, v1}, Lim/doit/pro/ui/component/DRoundedAvatarView;->setAvatar(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 840
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->authTV:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->postTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lim/doit/pro/model/TaskComment;->formatPostTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v4, p0, Lim/doit/pro/activity/TaskDetailFragment$CommentAdapter$CommentViewHolder;->contentTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lim/doit/pro/model/TaskComment;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    return-void

    .line 829
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    .line 830
    invoke-virtual {v4, v0}, Lim/doit/pro/db/persist/ContactDao;->findByUserId(Ljava/lang/String;)Lim/doit/pro/model/Contact;

    move-result-object v3

    .line 831
    .local v3, "contact":Lim/doit/pro/model/Contact;
    if-eqz v3, :cond_2

    .line 832
    invoke-virtual {v3}, Lim/doit/pro/model/Contact;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 833
    invoke-virtual {v3}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 834
    invoke-virtual {v3}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 835
    :goto_1
    goto :goto_0

    .line 834
    :cond_1
    invoke-virtual {v3}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 836
    :cond_2
    invoke-virtual {p1}, Lim/doit/pro/model/TaskComment;->getAuthorEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
