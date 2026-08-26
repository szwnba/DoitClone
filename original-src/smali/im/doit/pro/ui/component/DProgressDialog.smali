.class public Lim/doit/pro/ui/component/DProgressDialog;
.super Landroid/app/DialogFragment;
.source "DProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;
    }
.end annotation


# static fields
.field private static final KEY_CANCELABLE:Ljava/lang/String; = "cancelable"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private mCancelable:Z

.field private mMessage:Ljava/lang/String;

.field private mOnKeyDownListener:Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/DProgressDialog;)Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lim/doit/pro/ui/component/DProgressDialog;->mOnKeyDownListener:Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;

    return-object v0
.end method

.method public static closeDialog(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 54
    const-string v2, "DIALOG_TAG_TRANSPARENT_PROGRESS"

    .line 53
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 52
    check-cast v0, Lim/doit/pro/ui/component/DProgressDialog;

    .line 55
    .local v0, "progressDialog":Lim/doit/pro/ui/component/DProgressDialog;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lim/doit/pro/ui/component/DProgressDialog;->dismissAllowingStateLoss()V

    .line 57
    const-string v1, "close dialog"

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;Ljava/lang/CharSequence;Z)Lim/doit/pro/ui/component/DProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/CharSequence;Z)Lim/doit/pro/ui/component/DProgressDialog;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "cancelable"    # Z

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lim/doit/pro/ui/component/DProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private static show(Landroid/app/Activity;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lim/doit/pro/ui/component/DProgressDialog;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 64
    invoke-static {p0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 65
    new-instance v1, Lim/doit/pro/ui/component/DProgressDialog;

    invoke-direct {v1}, Lim/doit/pro/ui/component/DProgressDialog;-><init>()V

    .line 66
    .local v1, "dialog":Lim/doit/pro/ui/component/DProgressDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 68
    const-string v2, "message"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    const-string v2, "cancelable"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/DProgressDialog;->setArguments(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 73
    const-string v3, "DIALOG_TAG_TRANSPARENT_PROGRESS"

    .line 72
    invoke-virtual {v1, v2, v3}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 74
    const-string v2, "show dialog"

    invoke-static {v2}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 75
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v0, 0x0

    .line 90
    const v1, 0x7f0d00fe

    .line 89
    invoke-virtual {p0, v0, v1}, Lim/doit/pro/ui/component/DProgressDialog;->setStyle(II)V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DProgressDialog;->mMessage:Ljava/lang/String;

    .line 93
    const-string v0, "cancelable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DProgressDialog;->mCancelable:Z

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DProgressDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/DProgressDialog;->mMessage:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DProgressDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cancelable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DProgressDialog;->mCancelable:Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x2

    .line 102
    iget-boolean v4, p0, Lim/doit/pro/ui/component/DProgressDialog;->mCancelable:Z

    invoke-virtual {p0, v4}, Lim/doit/pro/ui/component/DProgressDialog;->setCancelable(Z)V

    .line 105
    iget-object v4, p0, Lim/doit/pro/ui/component/DProgressDialog;->mMessage:Ljava/lang/String;

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 107
    const v5, 0x7f0d00fe

    .line 106
    invoke-direct {v1, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 111
    .local v1, "dialog":Landroid/app/Dialog;
    :goto_0
    iget-boolean v4, p0, Lim/doit/pro/ui/component/DProgressDialog;->mCancelable:Z

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 112
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 113
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    check-cast v2, Landroid/view/LayoutInflater;

    .line 114
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0300a6

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "bar":Landroid/view/View;
    const v4, 0x7f0b01ba

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 115
    check-cast v3, Landroid/widget/TextView;

    .line 117
    .local v3, "messageView":Landroid/widget/TextView;
    iget-object v4, p0, Lim/doit/pro/ui/component/DProgressDialog;->mMessage:Ljava/lang/String;

    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v4, p0, Lim/doit/pro/ui/component/DProgressDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_1
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 125
    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 123
    invoke-virtual {v1, v0, v4}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v4, Lim/doit/pro/ui/component/DProgressDialog$1;

    invoke-direct {v4, p0}, Lim/doit/pro/ui/component/DProgressDialog$1;-><init>(Lim/doit/pro/ui/component/DProgressDialog;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 139
    return-object v1

    .line 109
    .end local v0    # "bar":Landroid/view/View;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v3    # "messageView":Landroid/widget/TextView;
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d00fc

    invoke-direct {v1, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 121
    .restart local v0    # "bar":Landroid/view/View;
    .restart local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v3    # "messageView":Landroid/widget/TextView;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "message"

    invoke-virtual {p0}, Lim/doit/pro/ui/component/DProgressDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "cancelable"

    .line 83
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DProgressDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cancelable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public setOnKeyDownListener(Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;

    .prologue
    .line 32
    iput-object p1, p0, Lim/doit/pro/ui/component/DProgressDialog;->mOnKeyDownListener:Lim/doit/pro/ui/component/DProgressDialog$OnKeyDownListener;

    .line 33
    return-void
.end method
