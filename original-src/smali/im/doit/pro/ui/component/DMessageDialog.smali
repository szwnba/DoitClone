.class public Lim/doit/pro/ui/component/DMessageDialog;
.super Landroid/app/DialogFragment;
.source "DMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private negativeButtonListener:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

.field private neutralButtonListener:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

.field private positiveButtonListener:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/DMessageDialog;)Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lim/doit/pro/ui/component/DMessageDialog;->positiveButtonListener:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/DMessageDialog;)Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lim/doit/pro/ui/component/DMessageDialog;->neutralButtonListener:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/DMessageDialog;)Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lim/doit/pro/ui/component/DMessageDialog;->negativeButtonListener:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lim/doit/pro/ui/component/DMessageDialog;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 22
    new-instance v0, Lim/doit/pro/ui/component/DMessageDialog;

    invoke-direct {v0}, Lim/doit/pro/ui/component/DMessageDialog;-><init>()V

    .line 23
    .local v0, "frag":Lim/doit/pro/ui/component/DMessageDialog;
    invoke-virtual {v0, p0}, Lim/doit/pro/ui/component/DMessageDialog;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v0
.end method

.method private setBodyViewContent(Landroid/view/View;)V
    .locals 6
    .param p1, "layoutView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "body":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "dialog_message_str"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "bodyMessage":Ljava/lang/String;
    const v3, 0x7f0b0107

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, "bodyView":Landroid/widget/TextView;
    if-lez v0, :cond_0

    .line 96
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNegativeButtonViewContent(Landroid/view/View;)V
    .locals 5
    .param p1, "layoutView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dialog_negative_button"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, "negativeBtn":I
    if-lez v1, :cond_0

    .line 153
    const v2, 0x7f0b0106

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    const v2, 0x7f0b010d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 157
    new-instance v2, Lim/doit/pro/ui/component/DMessageDialog$3;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/DMessageDialog$3;-><init>(Lim/doit/pro/ui/component/DMessageDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private setNeutralButtonViewContent(Landroid/view/View;)V
    .locals 5
    .param p1, "layoutView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dialog_neutral_button"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, "neutralBtn":I
    if-lez v1, :cond_0

    .line 131
    const v2, 0x7f0b0106

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    const v2, 0x7f0b010b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v2, 0x7f0b010c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 134
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 135
    new-instance v2, Lim/doit/pro/ui/component/DMessageDialog$2;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/DMessageDialog$2;-><init>(Lim/doit/pro/ui/component/DMessageDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private setPositiveButtonViewContent(Landroid/view/View;)V
    .locals 5
    .param p1, "layoutView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dialog_positive_button"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, "positiveBtn":I
    if-lez v1, :cond_0

    .line 109
    const v2, 0x7f0b0106

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const v2, 0x7f0b0109

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    const v2, 0x7f0b010a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 112
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 113
    new-instance v2, Lim/doit/pro/ui/component/DMessageDialog$1;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/DMessageDialog$1;-><init>(Lim/doit/pro/ui/component/DMessageDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private setTitleViewContent(Landroid/view/View;)V
    .locals 7
    .param p1, "layoutView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 76
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialog_title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "title":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "dialog_title_str"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "titleMsg":Ljava/lang/String;
    const v4, 0x7f0b010e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 79
    .local v3, "titleWrap":Landroid/view/View;
    const v4, 0x7f0b003a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, "titleView":Landroid/widget/TextView;
    if-lez v0, :cond_0

    .line 81
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 83
    :cond_0
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x0

    const v1, 0x7f0d00fc

    invoke-virtual {p0, v0, v1}, Lim/doit/pro/ui/component/DMessageDialog;->setStyle(II)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "layoutView":Landroid/view/View;
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/DMessageDialog;->setTitleViewContent(Landroid/view/View;)V

    .line 68
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/DMessageDialog;->setBodyViewContent(Landroid/view/View;)V

    .line 69
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/DMessageDialog;->setPositiveButtonViewContent(Landroid/view/View;)V

    .line 70
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/DMessageDialog;->setNeutralButtonViewContent(Landroid/view/View;)V

    .line 71
    invoke-direct {p0, v0}, Lim/doit/pro/ui/component/DMessageDialog;->setNegativeButtonViewContent(Landroid/view/View;)V

    .line 72
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 30
    const-string v0, "dialog_title"

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialog_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string v0, "dialog_title_str"

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialog_title_str"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "dialog_message"

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialog_message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const-string v0, "dialog_message_str"

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialog_message_str"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "dialog_positive_button"

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialog_positive_button"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    const-string v0, "dialog_neutral_button"

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialog_neutral_button"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v0, "dialog_negative_button"

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DMessageDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "dialog_negative_button"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public setOnNegativeButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    .prologue
    .line 54
    iput-object p1, p0, Lim/doit/pro/ui/component/DMessageDialog;->negativeButtonListener:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    .line 55
    return-object p0
.end method

.method public setOnNeutralButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    .prologue
    .line 49
    iput-object p1, p0, Lim/doit/pro/ui/component/DMessageDialog;->neutralButtonListener:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    .line 50
    return-object p0
.end method

.method public setOnPositiveButtonClickListener(Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;)Lim/doit/pro/ui/component/DMessageDialog;
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    .prologue
    .line 44
    iput-object p1, p0, Lim/doit/pro/ui/component/DMessageDialog;->positiveButtonListener:Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;

    .line 45
    return-object p0
.end method
